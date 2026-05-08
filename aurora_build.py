#!/usr/bin/env python3.11
"""AURORA — Generative Polyrhythmic MIDI Sequencer for Max for Live.

Architecture: Markov walk × scale quantizer × probability gate × tempo sync.

Generates:
  AURORA.maxpat — pure Max patch (always works in Max)
  AURORA.amxd  — Max for Live device wrapper (best-guess binary container)
"""

import json
import struct
import os

OUT_DIR = "/Users/adriank1410/Downloads"

_id_counter = [0]


def nid() -> str:
    _id_counter[0] += 1
    return f"obj-{_id_counter[0]}"


boxes: list[dict] = []
lines: list[dict] = []


def add(box: dict) -> str:
    boxes.append({"box": box})
    return box["id"]


def connect(src: str, src_outlet: int, dst: str, dst_inlet: int) -> None:
    lines.append({
        "patchline": {
            "destination": [dst, dst_inlet],
            "source": [src, src_outlet],
        }
    })


def newobj(text: str, x: int, y: int, w: int = 100, h: int = 22,
           ins: int = 1, outs: int = 1, outlettype=None, **extra) -> str:
    b = {
        "id": nid(),
        "maxclass": "newobj",
        "text": text,
        "patching_rect": [x, y, w, h],
        "numinlets": ins,
        "numoutlets": outs,
    }
    if outlettype is not None:
        b["outlettype"] = outlettype
    b.update(extra)
    return add(b)


def msg(text: str, x: int, y: int, w: int = 90, h: int = 22) -> str:
    return add({
        "id": nid(),
        "maxclass": "message",
        "text": text,
        "patching_rect": [x, y, w, h],
        "numinlets": 2,
        "numoutlets": 1,
        "outlettype": [""],
    })


def comment(text: str, x: int, y: int, w: int = 140, h: int = 20,
            presentation: bool = False, prect=None,
            fontsize: float = 11.0, color=None,
            justification: int = 1, fontname: str = "Arial Bold") -> str:
    # Per Context7 reference, `comment` exposes textjustification and
    # presentation_rect but NOT an autosize attribute. The box width set via
    # presentation_rect is honored, and textjustification governs alignment
    # within that box. We rely on a wide prect so center text aligns visually.
    b = {
        "id": nid(),
        "maxclass": "comment",
        "text": text,
        "patching_rect": [x, y, w, h],
        "fontsize": fontsize,
        "numinlets": 1,
        "numoutlets": 0,
        "fontname": fontname,
    }
    if justification is not None:
        b["textjustification"] = justification
    if presentation:
        b["presentation"] = 1
        b["presentation_rect"] = prect
    if color is not None:
        b["textcolor"] = color
    return add(b)


def panel(x: int, y: int, w: int, h: int, color, presentation_rect) -> str:
    return add({
        "id": nid(),
        "maxclass": "panel",
        "patching_rect": [x, y, w, h],
        "presentation": 1,
        "presentation_rect": presentation_rect,
        "bgcolor": color,
        "border": 0,
        "rounded": 4,
        "background": 1,
        "numinlets": 1,
        "numoutlets": 0,
    })


def live_dial(varname: str, long_name: str, short_name: str,
              lo: float, hi: float, init: float,
              x: int, y: int, prect,
              is_float: bool = True, unit_style: int = 0,
              exponent: float = 1.0, annotation: str = "") -> str:
    b = {
        "id": nid(),
        "maxclass": "live.dial",
        "patching_rect": [x, y, 36, 41],
        "presentation": 1,
        "presentation_rect": prect,
        "varname": varname,
        "numinlets": 1,
        "numoutlets": 2,
        "outlettype": ["", "float"],
        "parameter_enable": 1,
        "annotation": annotation,
        "saved_attribute_attributes": {
            "valueof": {
                "parameter_longname": long_name,
                "parameter_shortname": short_name,
                "parameter_type": 0 if is_float else 1,
                "parameter_initial_enable": 1,
                "parameter_initial": [init],
                "parameter_range": [lo, hi],
                "parameter_unitstyle": unit_style,
                "parameter_exponent": exponent,
            }
        },
    }
    return add(b)


def live_numbox(varname: str, long_name: str, short_name: str,
                lo: float, hi: float, init: float,
                x: int, y: int, prect,
                is_float: bool = False, unit_style: int = 0,
                annotation: str = "") -> str:
    b = {
        "id": nid(),
        "maxclass": "live.numbox",
        "patching_rect": [x, y, 50, 17],
        "presentation": 1,
        "presentation_rect": prect,
        "varname": varname,
        "numinlets": 1,
        "numoutlets": 2,
        "outlettype": ["", "float"],
        "parameter_enable": 1,
        "annotation": annotation,
        "saved_attribute_attributes": {
            "valueof": {
                "parameter_longname": long_name,
                "parameter_shortname": short_name,
                "parameter_type": 0 if is_float else 1,
                "parameter_initial_enable": 1,
                "parameter_initial": [init],
                "parameter_range": [lo, hi],
                "parameter_unitstyle": unit_style,
            }
        },
    }
    return add(b)


def live_menu(varname: str, long_name: str, short_name: str,
              enum_items: list[str], init: int,
              x: int, y: int, prect, w: int = 80,
              annotation: str = "") -> str:
    b = {
        "id": nid(),
        "maxclass": "live.menu",
        "patching_rect": [x, y, w, 17],
        "presentation": 1,
        "presentation_rect": prect,
        "varname": varname,
        "numinlets": 1,
        "numoutlets": 2,
        "outlettype": ["", ""],
        "parameter_enable": 1,
        "annotation": annotation,
        "items": enum_items,
        "saved_attribute_attributes": {
            "valueof": {
                "parameter_longname": long_name,
                "parameter_shortname": short_name,
                "parameter_type": 2,
                "parameter_initial_enable": 1,
                "parameter_initial": [init],
                "parameter_enum": enum_items,
                "parameter_range": enum_items,
            }
        },
    }
    return add(b)


def live_toggle(varname: str, long_name: str, short_name: str,
                init: int, x: int, y: int, prect,
                annotation: str = "") -> str:
    b = {
        "id": nid(),
        "maxclass": "live.toggle",
        "patching_rect": [x, y, 17, 17],
        "presentation": 1,
        "presentation_rect": prect,
        "varname": varname,
        "numinlets": 1,
        "numoutlets": 2,
        "outlettype": ["", ""],
        "parameter_enable": 1,
        "annotation": annotation,
        "saved_attribute_attributes": {
            "valueof": {
                "parameter_longname": long_name,
                "parameter_shortname": short_name,
                "parameter_type": 1,
                "parameter_initial_enable": 1,
                "parameter_initial": [init],
                "parameter_range": [0, 1],
                "parameter_unitstyle": 0,
            }
        },
    }
    return add(b)


def live_button(varname: str, long_name: str, short_name: str,
                x: int, y: int, prect,
                annotation: str = "") -> str:
    b = {
        "id": nid(),
        "maxclass": "live.button",
        "patching_rect": [x, y, 20, 20],
        "presentation": 1,
        "presentation_rect": prect,
        "varname": varname,
        "numinlets": 1,
        "numoutlets": 1,
        "outlettype": ["bang"],
        "parameter_enable": 1,
        "annotation": annotation,
        "saved_attribute_attributes": {
            "valueof": {
                "parameter_longname": long_name,
                "parameter_shortname": short_name,
                "parameter_type": 1,
                "parameter_range": [0, 1],
                "parameter_unitstyle": 0,
            }
        },
    }
    return add(b)


# ============================================================================
# PRESENTATION (UI) LAYOUT
# ============================================================================
TITLE_COLOR = [0.95, 0.65, 0.20, 1.0]
LABEL_COLOR = [0.85, 0.85, 0.85, 1.0]
ACCENT_COLOR = [0.30, 0.78, 0.95, 1.0]
DARK_BG = [0.13, 0.14, 0.16, 1.0]
PANEL_BG = [0.18, 0.19, 0.22, 1.0]

# Compact device: 460 wide × 168 high
DEVICE_W = 460
DEVICE_H = 168
panel(0, 0, DEVICE_W, DEVICE_H, DARK_BG, [0, 0, DEVICE_W, DEVICE_H])

# Title row (y=4-22) — POWER toggle next to logo as the master switch.
comment("AURORA", 0, 0, 130, 22,
        presentation=True, prect=[12, 4, 120, 22],
        fontsize=17.0, color=TITLE_COLOR,
        justification=0, fontname="Arial Black")
comment("generative sequencer", 0, 0, 180, 14,
        presentation=True, prect=[136, 10, 180, 14],
        fontsize=9.0, color=[0.55, 0.55, 0.55, 1.0],
        justification=0, fontname="Arial")

# Invisible click target on the AURORA logo → opens the GitHub repo
github_btn = add({
    "id": nid(),
    "maxclass": "ubutton",
    "patching_rect": [10, 1300, 120, 22],
    "presentation": 1,
    "presentation_rect": [12, 4, 120, 22],
    "numinlets": 1,
    "numoutlets": 4,
    "outlettype": ["bang", "", "", "int"],
    "bgcolor": [0., 0., 0., 0.],
    "bgoncolor": [0.95, 0.65, 0.20, 0.15],
    "annotation": "Click to open the AURORA repository on GitHub.",
})
github_msg = msg(
    "; max launchbrowser https://github.com/adriank1410/aurora-m4l-sequencer",
    150, 1300, 460,
)
connect(github_btn, 0, github_msg, 0)

# Master POWER toggle in title area, top-right corner near the logo
power = live_toggle(
    "power", "Power", "Pwr", 1, 20, 1000, [434, 6, 18, 18],
    annotation="Master ON/OFF for the generative sequencer.")
comment("MASTER ON", 0, 0, 130, 12,
        presentation=True, prect=[300, 8, 130, 12],
        fontsize=9.0, color=TITLE_COLOR,
        justification=2, fontname="Arial Bold")

# Top row: dials at y=36, labels lower at y=44, box widgets at y=58.
# Visual relationship: dial widget runs y=36-77 (with shortname inside top
# and value below), label+menu stack centered to dial's middle.
DIAL1_Y = 36
LABEL_Y = 44
BOX1_Y = 58

def lbl(text, x, w, color=None, y=LABEL_Y, fontsize=8.5):
    comment(text, 0, 0, w, 12,
            presentation=True, prect=[x, y, w, 12],
            fontsize=fontsize, color=(color or LABEL_COLOR),
            justification=1, fontname="Arial Bold")

lbl("STEPS", 56, 42)
lbl("RATE", 99, 48)
lbl("ROOT", 148, 40)
lbl("SCALE", 188, 94)
lbl("OCTAVE", 282, 46)

density = live_dial(
    "density", "Density", "Dens", 0.0, 100.0, 75.0,
    20, 1010, [14, DIAL1_Y, 36, 41], unit_style=5,
    annotation="Probability of triggering a note per step (0-100%).")
steps = live_numbox(
    "steps", "Steps", "Stp", 1, 32, 16,
    20, 1020, [58, BOX1_Y, 38, 17],
    annotation="Sequence length in steps (1-32).")
rate_items = ["1/4", "1/4t", "1/8", "1/8t", "1/16", "1/16t", "1/32"]
rate = live_menu(
    "rate_sel", "Rate", "Rate", rate_items, 4,
    20, 1030, [100, BOX1_Y, 46, 17],
    annotation="Step rate, synced to Live's transport (1/4 to 1/32, with triplets).")
root_items = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]
root = live_menu(
    "root_sel", "Root", "Root", root_items, 0,
    20, 1040, [150, BOX1_Y, 36, 17],
    annotation="Root note of the scale (C through B).")
# Full Live 12 scale names — same order as Live transport bar UI
scale_items = [
    "Major", "Minor", "Dorian", "Mixolydian", "Lydian", "Phrygian", "Locrian",
    "Whole Tone", "Half-whole Dim.", "Whole-half Dim.", "Minor Blues",
    "Minor Pentatonic", "Major Pentatonic", "Harmonic Minor", "Harmonic Major",
    "Dorian #4", "Phrygian Dominant", "Melodic Minor", "Lydian Augmented",
    "Lydian Dominant", "Super Locrian", "8-Tone Spanish", "Bhairav",
    "Hungarian Minor", "Hirajoshi", "In-Sen", "Iwato", "Kumoi",
    "Pelog Selisir", "Pelog Tembung", "Messiaen 3", "Messiaen 4",
    "Messiaen 5", "Messiaen 6", "Messiaen 7",
]
scale = live_menu(
    "scale_sel", "Scale", "Scl", scale_items, 1,
    20, 1050, [190, BOX1_Y, 90, 17],
    annotation="Musical scale used to quantize generated notes (35 modes from Live 12).")
octave = live_numbox(
    "octave", "Octave", "Oct", -2, 4, 0,
    20, 1060, [286, BOX1_Y, 38, 17],
    annotation="Base octave offset (-2 to +4 around middle C).")
octrange = live_dial(
    "octrange", "Range", "Rng", 1.0, 4.0, 2.0,
    20, 1070, [330, DIAL1_Y, 36, 41], is_float=False,
    annotation="Range of the Markov walk in scale degrees (≈ octaves).")

# Mode toggles in top-right corner of top row: LATCH, PASS, CHORD
latch_toggle = live_toggle(
    "latch", "Latch", "Lat", 0,
    20, 1075, [372, BOX1_Y - 1, 14, 14],
    annotation="Latch mode: hold each note until the next one replaces it (legato sustain).")
pass_toggle = live_toggle(
    "passthrough", "Passthrough", "Pas", 0,
    20, 1076, [402, BOX1_Y - 1, 14, 14],
    annotation="Pass MIDI from upstream devices through to the next device (chain MIDI from arpeggiators / keyboards).")
chord_toggle = live_toggle(
    "chord", "Chord", "Crd", 0,
    20, 1077, [432, BOX1_Y - 1, 14, 14],
    annotation="Chord mode: emit a triad (root + 3rd + 5th) within the current scale instead of a single note.")

lbl("LATCH", 362, 34, color=ACCENT_COLOR)
lbl("PASS", 394, 30, color=ACCENT_COLOR)
lbl("CHORD", 422, 34, color=ACCENT_COLOR)

# Internal step counter mirror (not in presentation — used by swing logic only)
step_indicator = add({
    "id": nid(),
    "maxclass": "live.numbox",
    "patching_rect": [20, 1080, 50, 17],
    "varname": "step_pos",
    "numinlets": 1,
    "numoutlets": 2,
    "outlettype": ["", "float"],
})

# Bottom row at y=92 (compact 168h device, no pattern strip).
DIAL2_Y = 92
BUTTON_Y = 102

walk = live_dial(
    "walk", "Walk", "Walk", 0.0, 100.0, 65.0,
    20, 1110, [12, DIAL2_Y, 36, 41], unit_style=5,
    annotation="Probability of stepping ±1 (Markov walk) vs random jump.")
chaos = live_dial(
    "chaos", "Chaos", "Chaos", 0.0, 100.0, 15.0,
    20, 1120, [52, DIAL2_Y, 36, 41], unit_style=5,
    annotation="Probability of a fully random note overriding the walk.")
velocity = live_dial(
    "velocity", "Velocity", "Vel", 1.0, 127.0, 100.0,
    20, 1130, [92, DIAL2_Y, 36, 41], is_float=False,
    annotation="Base MIDI velocity for emitted notes (1-127).")
vel_rand = live_dial(
    "vel_rand", "VelRand", "VRnd", 0.0, 100.0, 25.0,
    20, 1140, [132, DIAL2_Y, 36, 41], unit_style=5,
    annotation="Random velocity variation (humanize amount, 0-100%).")
length = live_dial(
    "length", "Length", "Len", 0.05, 2.0, 0.5,
    20, 1150, [172, DIAL2_Y, 36, 41], unit_style=1,
    annotation="Note duration as a multiplier of the step duration.")
swing = live_dial(
    "swing", "Swing", "Swng", 0.0, 75.0, 0.0,
    20, 1160, [212, DIAL2_Y, 36, 41], unit_style=5,
    annotation="Swing amount applied to odd steps (0-75%).")

# Action group: RESET, EVOLVE, FOLLOW LIVE all clustered at the right.
# Bigger gap from dials (last dial ends at x=248).
# Action group pushed right for visual balance with the wider top row.
# Button centers: RESET=307, EVOLVE=349, FOLLOW=393
reset = live_button(
    "reset", "Reset", "Rst",
    20, 1170, [296, BUTTON_Y, 22, 22],
    annotation="Reset step counter to 0 immediately.")
evolve = live_button(
    "evolve", "Evolve", "Evo",
    20, 1180, [338, BUTTON_Y, 22, 22],
    annotation="Re-seed the Markov walk with a fresh random starting degree.")
follow_live = live_toggle(
    "follow_live", "Follow Live", "Foll", 1,
    20, 1190, [384, BUTTON_Y + 2, 18, 18],
    annotation="When ON, override Root and Scale with Live's global Scale settings (Live 12+).")

# Labels with WIDE prect (60w) and center-justify around button centers.
comment("RESET", 0, 0, 60, 12,
        presentation=True, prect=[277, BUTTON_Y + 23, 60, 12],
        fontsize=8.5, color=LABEL_COLOR, justification=1, fontname="Arial Bold")
comment("EVOLVE", 0, 0, 60, 12,
        presentation=True, prect=[319, BUTTON_Y + 23, 60, 12],
        fontsize=8.5, color=ACCENT_COLOR, justification=1, fontname="Arial Bold")
comment("FOLLOW", 0, 0, 60, 12,
        presentation=True, prect=[363, BUTTON_Y + 23, 60, 12],
        fontsize=8.5, color=ACCENT_COLOR, justification=1, fontname="Arial Bold")

# Footer (y=150) — left: byline + clickable portfolio link.
# right: feature tagline.
comment("◆  by Adrian Kwiatkowski",
        0, 0, 180, 14,
        presentation=True, prect=[12, 150, 180, 14],
        fontsize=8.5, color=TITLE_COLOR,
        justification=0, fontname="Arial Bold")

# Invisible click target on byline → portfolio site
portfolio_btn = add({
    "id": nid(),
    "maxclass": "ubutton",
    "patching_rect": [10, 1330, 180, 14],
    "presentation": 1,
    "presentation_rect": [12, 150, 180, 14],
    "numinlets": 1,
    "numoutlets": 4,
    "outlettype": ["bang", "", "", "int"],
    "bgcolor": [0., 0., 0., 0.],
    "bgoncolor": [0.95, 0.65, 0.20, 0.15],
    "annotation": "Click to open adriankwiatkowski.eu (Spotify, Bandcamp, SoundCloud, Apple Music links).",
})
portfolio_msg = msg(
    "; max launchbrowser https://adriankwiatkowski.eu",
    200, 1330, 320,
)
connect(portfolio_btn, 0, portfolio_msg, 0)

comment("Markov · 35 scales · chord · latch · passthrough",
        0, 0, 280, 14,
        presentation=True, prect=[168, 150, 280, 14],
        fontsize=8.0, color=[0.55, 0.55, 0.55, 1.0],
        justification=2, fontname="Arial")

# ============================================================================
# CORE LOGIC
# ============================================================================

# live.thisdevice — fires bang on load
thisdevice = newobj("live.thisdevice", 50, 250, 120, 22,
                    ins=1, outs=3, outlettype=["bang", "bang", ""])

# Full 35 scales matching Live 12's scale picker, in same enum order.
# Each is padded to 12 degrees by extending across octaves.
scales_data = {
    0:  [0, 2, 4, 5, 7, 9, 11, 12, 14, 16, 17, 19],   # Major
    1:  [0, 2, 3, 5, 7, 8, 10, 12, 14, 15, 17, 19],   # Minor
    2:  [0, 2, 3, 5, 7, 9, 10, 12, 14, 15, 17, 19],   # Dorian
    3:  [0, 2, 4, 5, 7, 9, 10, 12, 14, 16, 17, 19],   # Mixolydian
    4:  [0, 2, 4, 6, 7, 9, 11, 12, 14, 16, 18, 19],   # Lydian
    5:  [0, 1, 3, 5, 7, 8, 10, 12, 13, 15, 17, 19],   # Phrygian
    6:  [0, 1, 3, 5, 6, 8, 10, 12, 13, 15, 17, 18],   # Locrian
    7:  [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22],  # Whole Tone
    8:  [0, 1, 3, 4, 6, 7, 9, 10, 12, 13, 15, 16],    # Half-whole Dim.
    9:  [0, 2, 3, 5, 6, 8, 9, 11, 12, 14, 15, 17],    # Whole-half Dim.
    10: [0, 3, 5, 6, 7, 10, 12, 15, 17, 18, 19, 22],  # Minor Blues
    11: [0, 3, 5, 7, 10, 12, 15, 17, 19, 22, 24, 27], # Minor Pentatonic
    12: [0, 2, 4, 7, 9, 12, 14, 16, 19, 21, 24, 26],  # Major Pentatonic
    13: [0, 2, 3, 5, 7, 8, 11, 12, 14, 15, 17, 19],   # Harmonic Minor
    14: [0, 2, 4, 5, 7, 8, 11, 12, 14, 16, 17, 19],   # Harmonic Major
    15: [0, 2, 3, 6, 7, 9, 10, 12, 14, 15, 18, 19],   # Dorian #4
    16: [0, 1, 4, 5, 7, 8, 10, 12, 13, 16, 17, 19],   # Phrygian Dominant
    17: [0, 2, 3, 5, 7, 9, 11, 12, 14, 15, 17, 19],   # Melodic Minor
    18: [0, 2, 4, 6, 8, 9, 11, 12, 14, 16, 18, 20],   # Lydian Augmented
    19: [0, 2, 4, 6, 7, 9, 10, 12, 14, 16, 18, 19],   # Lydian Dominant
    20: [0, 1, 3, 4, 6, 8, 10, 12, 13, 15, 16, 18],   # Super Locrian
    21: [0, 1, 3, 4, 5, 6, 8, 10, 12, 13, 15, 16],    # 8-Tone Spanish
    22: [0, 1, 4, 5, 7, 8, 11, 12, 13, 16, 17, 19],   # Bhairav
    23: [0, 2, 3, 6, 7, 8, 11, 12, 14, 15, 18, 19],   # Hungarian Minor
    24: [0, 2, 3, 7, 8, 12, 14, 15, 19, 20, 24, 26],  # Hirajoshi
    25: [0, 1, 5, 7, 10, 12, 13, 17, 19, 22, 24, 25], # In-Sen
    26: [0, 1, 5, 6, 10, 12, 13, 17, 18, 22, 24, 25], # Iwato
    27: [0, 2, 3, 7, 9, 12, 14, 15, 19, 21, 24, 26],  # Kumoi
    28: [0, 1, 3, 7, 8, 12, 13, 15, 19, 20, 24, 25],  # Pelog Selisir
    29: [0, 1, 5, 7, 8, 12, 13, 17, 19, 20, 24, 25],  # Pelog Tembung
    30: [0, 2, 3, 4, 6, 7, 8, 10, 11, 12, 14, 15],    # Messiaen 3
    31: [0, 1, 2, 3, 6, 7, 8, 9, 12, 13, 14, 15],     # Messiaen 4
    32: [0, 1, 5, 6, 7, 11, 12, 13, 17, 18, 19, 23],  # Messiaen 5
    33: [0, 2, 4, 5, 6, 8, 10, 11, 12, 14, 16, 17],   # Messiaen 6
    34: [0, 1, 2, 3, 5, 6, 7, 8, 9, 11, 12, 13],      # Messiaen 7
}

# coll for scale lookup (populated at load time via messages).
# No filename argument — keeps data inline in patch via store messages,
# avoids Max trying to read a missing companion file.
scales_coll = newobj("coll", 200, 320, 160, 22,
                     ins=1, outs=4,
                     outlettype=["", "", "", ""])

# Populate coll. Two redundant triggers (loadbang + live.thisdevice) so we
# don't depend on Live API timing. NO 'clear' message: with fan-out from a
# single outlet firing right-to-left, the clear would fire LAST and wipe
# the stores. Fresh load starts with empty coll anyway.
loadbang_obj = newobj("loadbang", 30, 280, 70, 22, ins=1, outs=1,
                      outlettype=["bang"])

for idx, vals in scales_data.items():
    val_str = " ".join(str(v) for v in vals)
    m = msg(f"store {idx} {val_str}", 50 + idx * 4, 295 + idx * 2, 280, 18)
    connect(thisdevice, 0, m, 0)
    connect(loadbang_obj, 0, m, 0)
    connect(m, 0, scales_coll, 0)


# ----- Metro driving the sequencer -----
metro_obj = newobj("metro 16n @active 0", 800, 350, 130, 22,
                   ins=2, outs=1, outlettype=["bang"])

# Power toggle drives metro on/off
connect(power, 0, metro_obj, 0)

# Rate menu sets metro interval
rate_route = newobj("sel 0 1 2 3 4 5 6", 800, 320, 150, 22,
                    ins=1, outs=8,
                    outlettype=["bang"] * 8)
connect(rate, 0, rate_route, 0)

rate_strings = ["4n", "4nt", "8n", "8nt", "16n", "16nt", "32n"]
for i, sym in enumerate(rate_strings):
    m = msg(f"interval {sym}", 700 + i * 90, 295, 80)
    connect(rate_route, i, m, 0)
    connect(m, 0, metro_obj, 0)

# ----- Step counter -----
counter_obj = newobj("counter 0 0 31", 800, 380, 100, 22,
                     ins=5, outs=4,
                     outlettype=["int", "", "", "int"])
connect(metro_obj, 0, counter_obj, 0)

# Steps numbox sets counter max
steps_to_max = newobj("- 1", 900, 350, 50, 22, ins=2, outs=1,
                      outlettype=["int"])
connect(steps, 0, steps_to_max, 0)
steps_max_msg = msg("max $1", 900, 365, 60)
connect(steps_to_max, 0, steps_max_msg, 0)
connect(steps_max_msg, 0, counter_obj, 0)

# Reset button: jam 0 sets counter to 0 AND emits immediately (visible).
# 'set 0' would silently store and only emit on next bang.
reset_send = msg("jam 0", 700, 400, 50)
connect(reset, 0, reset_send, 0)
connect(reset_send, 0, counter_obj, 0)

# Step indicator
connect(counter_obj, 0, step_indicator, 0)

# ----- Probability gate (DENSITY) -----
prob_rand = newobj("random 100", 600, 420, 90, 22,
                   ins=2, outs=1, outlettype=["int"])
connect(metro_obj, 0, prob_rand, 0)

density_to_int = newobj("expr int($f1)", 700, 400, 100, 22, ins=1, outs=1,
                        outlettype=["int"])
connect(density, 0, density_to_int, 0)

prob_compare = newobj("<", 600, 450, 50, 22, ins=2, outs=1,
                      outlettype=["int"])
connect(prob_rand, 0, prob_compare, 0)
connect(density_to_int, 0, prob_compare, 1)

# Gate that only opens when prob_compare == 1
note_gate = newobj("gate 1", 600, 480, 60, 22, ins=2, outs=1,
                   outlettype=["bang"])
connect(prob_compare, 0, note_gate, 0)

prob_bang = newobj("t b", 550, 460, 50, 22, ins=1, outs=1,
                   outlettype=["bang"])
connect(metro_obj, 0, prob_bang, 0)
connect(prob_bang, 0, note_gate, 1)

# ----- Decision computation -----
# Range-derived max degree (clamped 1..11)
range_max = newobj("expr min(max(int($f1*3-1), 1), 11)",
                   200, 510, 200, 22, ins=1, outs=1, outlettype=["int"])
connect(octrange, 0, range_max, 0)

range_max_storage = newobj("int 6", 200, 540, 50, 22, ins=2, outs=1,
                           outlettype=["int"])
connect(range_max, 0, range_max_storage, 0)

# previous degree storage
prev_deg = newobj("int 0", 350, 540, 50, 22, ins=2, outs=1,
                  outlettype=["int"])

# t_main fires 5 bangs in outlet 4→0 order (right-to-left).
# Order matters because [if] objects only compute on hot inlet ($i1):
#   outlet 4 (first):  chaos_cand recompute
#   outlet 3:          walk_dir → walk_dir_map → walk_cand cold inlet
#   outlet 2:          bang prev_deg → walk_cand hot inlet (computes)
#   outlet 1:          rand2 → decision_inner hot inlet (computes)
#   outlet 0 (last):   rand1 → decision hot inlet (computes)
t_main = newobj("t b b b b b", 600, 510, 130, 22, ins=1, outs=5,
                outlettype=["bang"] * 5)
connect(note_gate, 0, t_main, 0)

# Cold values (read on demand by [if])
chaos_pct = newobj("expr int($f1)", 450, 575, 100, 22, ins=1, outs=1,
                   outlettype=["int"])
connect(chaos, 0, chaos_pct, 0)

walk_pct = newobj("expr int($f1)", 800, 575, 100, 22, ins=1, outs=1,
                  outlettype=["int"])
connect(walk, 0, walk_pct, 0)

# chaos_cand: random in [0..range_max]
chaos_cand_max_plus = newobj("+ 1", 600, 575, 50, 22, ins=2, outs=1,
                             outlettype=["int"])
connect(range_max_storage, 0, chaos_cand_max_plus, 1)
chaos_cand = newobj("random 12", 600, 600, 90, 22, ins=2, outs=1,
                    outlettype=["int"])
connect(chaos_cand_max_plus, 0, chaos_cand, 1)
connect(t_main, 4, chaos_cand_max_plus, 0)
chaos_cand_trig = newobj("t b", 700, 580, 50, 22, ins=1, outs=1,
                         outlettype=["bang"])
connect(t_main, 4, chaos_cand_trig, 0)
connect(chaos_cand_trig, 0, chaos_cand, 0)

# walk_dir → walk_dir_map → walk_cand_calc cold $i2
walk_dir = newobj("random 2", 950, 545, 90, 22, ins=2, outs=1,
                  outlettype=["int"])
connect(t_main, 3, walk_dir, 0)
walk_dir_map = newobj("expr ($i1*2)-1", 950, 575, 110, 22, ins=1, outs=1,
                      outlettype=["int"])
connect(walk_dir, 0, walk_dir_map, 0)
walk_cand_calc = newobj("expr min(max($i1+$i2, 0), $i3)",
                        950, 605, 220, 22, ins=3, outs=1, outlettype=["int"])
connect(prev_deg, 0, walk_cand_calc, 0)
connect(walk_dir_map, 0, walk_cand_calc, 1)
connect(range_max_storage, 0, walk_cand_calc, 2)

# Bang prev_deg → fires stored value through hot inlet of walk_cand_calc
connect(t_main, 2, prev_deg, 0)

# rand2 fires before rand1 (decision_inner before decision)
rand2 = newobj("random 100", 800, 545, 90, 22, ins=2, outs=1,
               outlettype=["int"])
connect(t_main, 1, rand2, 0)

rand1 = newobj("random 100", 450, 545, 90, 22, ins=2, outs=1,
               outlettype=["int"])
connect(t_main, 0, rand1, 0)

# Inner [if]: rand2 < walk_pct ? walk_cand : chaos_cand
decision_inner = newobj("if $i1 < $i2 then $i3 else $i4",
                        600, 640, 260, 22, ins=4, outs=1,
                        outlettype=[""])
connect(rand2, 0, decision_inner, 0)
connect(walk_pct, 0, decision_inner, 1)
connect(walk_cand_calc, 0, decision_inner, 2)
connect(chaos_cand, 0, decision_inner, 3)

# Outer [if]: rand1 < chaos_pct ? chaos_cand : inner_result
decision = newobj("if $i1 < $i2 then $i3 else $i4",
                  600, 670, 260, 22, ins=4, outs=1,
                  outlettype=[""])
connect(rand1, 0, decision, 0)
connect(chaos_pct, 0, decision, 1)
connect(chaos_cand, 0, decision, 2)
connect(decision_inner, 0, decision, 3)

# Update prev_deg with new degree (right inlet so it stores without output)
deg_split = newobj("t i i", 600, 690, 80, 22, ins=1, outs=2,
                   outlettype=["int", "int"])
connect(decision, 0, deg_split, 0)
connect(deg_split, 1, prev_deg, 1)

# Evolve button: re-seed prev_deg with a random degree.
# Uses cold inlet (silent store), so next walk step uses the new seed.
evolve_rand = newobj("random 12", 350, 510, 90, 22, ins=2, outs=1,
                     outlettype=["int"])
connect(evolve, 0, evolve_rand, 0)
connect(evolve_rand, 0, prev_deg, 1)

# ----- Follow Live Scale (Live 12+ API integration) -----
# When the `follow_live` toggle is ON, observe the Live Set's global Root note
# and Scale name and override AURORA's Root/Scale parameters accordingly.
# Live 12 introduced song-level Scale (live_set.scale_mode + live_set.root_note).
# On Live 11 these properties don't exist — the observers simply won't emit and
# the device falls back to its own Root/Scale settings.

live_path_set = newobj("live.path live_set", 1100, 460, 140, 22,
                       ins=1, outs=2, outlettype=["", ""])
connect(thisdevice, 0, live_path_set, 0)

# Property name as positional argument (not @property — that didn't fire).
obs_root = newobj("live.observer root_note", 1100, 490, 200, 22,
                  ins=1, outs=2, outlettype=["", ""])
connect(live_path_set, 0, obs_root, 0)

# scale_name (Live 12 string property) emits on change of scale TYPE.
# scale_mode (int) was tested first but never fires on type change in user's
# Live 12 — only emits initial value 1. scale_name should fire when user
# picks Major/Minor/Dorian/etc. in transport bar.
obs_scale = newobj("live.observer scale_name", 1340, 490, 200, 22,
                   ins=1, outs=2, outlettype=["", ""])
connect(live_path_set, 0, obs_scale, 0)

# Belt-and-suspenders: also send `property <name>` message after id arrives,
# in case positional arg parsing differs across Max versions.
prop_root_msg = msg("property root_note", 1100, 462, 140)
connect(live_path_set, 0, prop_root_msg, 0)
connect(prop_root_msg, 0, obs_root, 0)

prop_scale_msg = msg("property scale_name", 1340, 462, 140)
connect(live_path_set, 0, prop_scale_msg, 0)
connect(prop_scale_msg, 0, obs_scale, 0)


# Live's scale_mode emits an INT (Live's internal scale enum index), not a
# symbol. Map Live int → AURORA scale index (0..11).
# Live's scale ordering (from transport bar UI), best-effort mapping:
scale_map_coll = newobj("coll", 1340, 580, 80, 22, ins=1, outs=4,
                        outlettype=["", "", "", ""])

# Live 12 scale_name → AURORA scale index (full Live names as symbol keys).
# Order matches Live 12 transport bar UI 1:1.
live_scale_pairs = [
    ("Major", 0), ("Minor", 1), ("Dorian", 2), ("Mixolydian", 3),
    ("Lydian", 4), ("Phrygian", 5), ("Locrian", 6),
    ("Whole Tone", 7), ("Half-whole Dim.", 8), ("Whole-half Dim.", 9),
    ("Minor Blues", 10), ("Minor Pentatonic", 11), ("Major Pentatonic", 12),
    ("Harmonic Minor", 13), ("Harmonic Major", 14),
    ("Dorian #4", 15), ("Phrygian Dominant", 16), ("Melodic Minor", 17),
    ("Lydian Augmented", 18), ("Lydian Dominant", 19), ("Super Locrian", 20),
    ("8-Tone Spanish", 21), ("Bhairav", 22), ("Hungarian Minor", 23),
    ("Hirajoshi", 24), ("In-Sen", 25), ("Iwato", 26), ("Kumoi", 27),
    ("Pelog Selisir", 28), ("Pelog Tembung", 29),
    ("Messiaen 3", 30), ("Messiaen 4", 31), ("Messiaen 5", 32),
    ("Messiaen 6", 33), ("Messiaen 7", 34),
]
for i, (live_name, aurora_idx) in enumerate(live_scale_pairs):
    # Quote multi-word names so coll receives a single symbol key.
    quoted = f'"{live_name}"' if " " in live_name else live_name
    m = msg(f"store {quoted} {aurora_idx}",
            1100 + (i % 4) * 70, 540 + (i // 4) * 18, 240, 18)
    connect(thisdevice, 0, m, 0)
    connect(loadbang_obj, 0, m, 0)
    connect(m, 0, scale_map_coll, 0)

# Cache observer values so we can re-emit them when follow_live transitions
# OFF→ON. Without this, change-while-Follow-OFF is lost (gate blocked it).
cached_root = newobj("int", 1100, 560, 50, 22, ins=2, outs=1,
                     outlettype=["int"])
connect(obs_root, 0, cached_root, 1)  # cold (silent store)

cached_scale = newobj("zl.reg", 1340, 560, 80, 22, ins=2, outs=1,
                      outlettype=[""])
connect(obs_scale, 0, cached_scale, 1)

# Create gates first so we can wire selectors BEFORE the trigger.
# Fan-out from follow_live fires in registration order; selector
# connections registered FIRST guarantee gate is open before bang→cache→gate.
root_gate = newobj("gate 1", 1100, 620, 60, 22, ins=2, outs=1,
                   outlettype=[""])
scale_follow_gate = newobj("gate 1", 1340, 620, 60, 22, ins=2, outs=1,
                           outlettype=[""])

# Selectors registered EARLY in fan-out order
connect(follow_live, 0, root_gate, 0)
connect(follow_live, 0, scale_follow_gate, 0)

# Trigger registered LAST so it fires after selectors update.
# Note: bang to cached_root → emit stored int → root_gate. The root path is
# fully synchronous, so we add [pipe 0] to defer the cached emit to the next
# scheduler tick, after the gate has opened. The scale path is naturally
# deferred by passing through [coll] for symbol→index lookup.
follow_on_trig = newobj("sel 1", 1220, 590, 60, 22, ins=1, outs=2,
                        outlettype=["bang", ""])
connect(follow_live, 0, follow_on_trig, 0)
connect(follow_on_trig, 0, cached_root, 0)
connect(follow_on_trig, 0, cached_scale, 0)

# Wire data paths (observer direct + cached)
defer_root = newobj("pipe 0", 1100, 590, 60, 22, ins=2, outs=1,
                    outlettype=["int"])
connect(cached_root, 0, defer_root, 0)

connect(obs_root, 0, root_gate, 1)
connect(defer_root, 0, root_gate, 1)
connect(root_gate, 0, root, 0)

connect(obs_scale, 0, scale_map_coll, 0)
connect(cached_scale, 0, scale_map_coll, 0)
connect(scale_map_coll, 0, scale_follow_gate, 1)
connect(scale_follow_gate, 0, scale, 0)

# ----- Scale lookup (degree → semitone) -----
# IMPORTANT: pack (not pak) so only HOT inlet (degree) triggers lookup.
# At load time live.menu emits initial scale_idx into cold inlet, no output.
# Only when degree updates (i.e. on actual sequencer step) does pack fire.
scale_to_int = newobj("expr int($i1)", 480, 720, 100, 22, ins=1, outs=1,
                      outlettype=["int"])
connect(scale, 0, scale_to_int, 0)

# coll's `nth` is 1-based — degree 0..N must become 1..N+1
deg_one_based = newobj("+ 1", 460, 730, 50, 22, ins=2, outs=1,
                       outlettype=["int"])
connect(deg_split, 0, deg_one_based, 0)

scale_pack = newobj("pack 0 0", 500, 750, 90, 22, ins=2, outs=1,
                    outlettype=[""])
connect(deg_one_based, 0, scale_pack, 0)   # HOT — triggers lookup
connect(scale_to_int, 0, scale_pack, 1)    # cold — stores

# pack output is [degree, scale_idx]; remap into "nth scale_idx degree"
scale_lookup_msg = msg("nth $2 $1", 500, 780, 90)
connect(scale_pack, 0, scale_lookup_msg, 0)
connect(scale_lookup_msg, 0, scales_coll, 0)

# ----- Compose final MIDI note -----
# Same trick: pack so only the semitone (from coll) triggers note assembly.
# root/octave update silently into cold inlets.
note_pak = newobj("pack 0 0 0", 200, 830, 130, 22, ins=3, outs=1,
                  outlettype=[""])
connect(scales_coll, 0, note_pak, 0)   # HOT
connect(root, 0, note_pak, 1)          # cold
connect(octave, 0, note_pak, 2)        # cold

note_calc = newobj("expr $i1+$i2+(($i3+5)*12)",
                   200, 860, 220, 22, ins=3, outs=1,
                   outlettype=["int"])
connect(note_pak, 0, note_calc, 0)

note_clip = newobj("clip 0 127", 200, 890, 100, 22, ins=3, outs=1,
                   outlettype=["int"])
connect(note_calc, 0, note_clip, 0)

# ----- Velocity computation -----
vel_int = newobj("expr int($f1)", 50, 830, 100, 22, ins=1, outs=1,
                 outlettype=["int"])
connect(velocity, 0, vel_int, 0)

vel_rand_int = newobj("expr int($f1*1.27)", 50, 855, 130, 22,
                      ins=1, outs=1, outlettype=["int"])
connect(vel_rand, 0, vel_rand_int, 0)

vel_rand_max = newobj("expr max($i1, 1)", 50, 880, 110, 22,
                      ins=1, outs=1, outlettype=["int"])
connect(vel_rand_int, 0, vel_rand_max, 0)

vel_rand_gen = newobj("random 128", 50, 905, 90, 22, ins=2, outs=1,
                      outlettype=["int"])
connect(vel_rand_max, 0, vel_rand_gen, 1)

# Trigger vel rand on every note
vel_trig = newobj("t b", 50, 805, 50, 22, ins=1, outs=1, outlettype=["bang"])
connect(deg_split, 1, vel_trig, 0)
connect(vel_trig, 0, vel_rand_gen, 0)

vel_apply = newobj("expr min(max($i1+$i2-($i3/2), 1), 127)",
                   50, 935, 260, 22, ins=3, outs=1, outlettype=["int"])
connect(vel_int, 0, vel_apply, 0)
connect(vel_rand_gen, 0, vel_apply, 1)
connect(vel_rand_int, 0, vel_apply, 2)

# ----- Length in ms -----
length_ms = newobj("expr int($f1*500.)", 480, 900, 130, 22,
                   ins=1, outs=1, outlettype=["int"])
connect(length, 0, length_ms, 0)

# Latch mode: when ON, set effective length to ~100s (effectively infinite),
# so makenote doesn't auto-schedule a note-off. The next note replaces the
# previous one. Use pak+unpack so BOTH latch and length changes trigger
# re-emit (plain expr only re-evaluates on hot inlet $i1). max($i2, 250)
# is a safety default if length_ms hasn't emitted yet at startup.
latch_pak = newobj("pak 0 0", 480, 920, 80, 22, ins=2, outs=1,
                   outlettype=[""])
connect(latch_toggle, 0, latch_pak, 0)
connect(length_ms, 0, latch_pak, 1)

latch_unpack = newobj("unpack 0 0", 480, 945, 80, 22, ins=1, outs=2,
                      outlettype=["int", "int"])
connect(latch_pak, 0, latch_unpack, 0)

latch_apply = newobj("expr ($i1==1)*99999 + ($i1==0)*max($i2, 250)",
                     480, 970, 260, 22, ins=2, outs=1, outlettype=["int"])
connect(latch_unpack, 0, latch_apply, 0)
connect(latch_unpack, 1, latch_apply, 1)

# ----- Swing (delay every other step) -----
swing_check = newobj("% 2", 700, 700, 50, 22, ins=2, outs=1,
                     outlettype=["int"])
connect(counter_obj, 0, swing_check, 0)

swing_delay_calc = newobj("expr ($i1==1)*int($f2*1.5)",
                          700, 730, 230, 22, ins=2, outs=1,
                          outlettype=["int"])
connect(swing_check, 0, swing_delay_calc, 0)
connect(swing, 0, swing_delay_calc, 1)

# Note: swing affects timing of the trigger. We pass the note bang through
# a [delay] tied to the swing amount. In practice, delay must receive both
# the bang and a delay-time setting.
swing_delay = newobj("delay 0", 700, 760, 80, 22, ins=2, outs=1,
                     outlettype=["bang"])
connect(swing_delay_calc, 0, swing_delay, 1)

# ----- makenote → midiformat → midiout (M4L MIDI effect convention) -----
# noteout would route to system/hardware MIDI; midiout sends downstream to
# the next device in the Live chain (the instrument we want to drive).
# midiformat inlet 0 expects a [pitch velocity] LIST and emits note-on bytes.
makenote = newobj("makenote 100 250", 200, 970, 140, 22, ins=3, outs=2,
                  outlettype=["int", "int"])
connect(note_clip, 0, makenote, 0)
connect(vel_apply, 0, makenote, 1)
connect(latch_apply, 0, makenote, 2)

# Pack pitch+velocity into a list. makenote emits right-to-left:
# outlet 1 (vel) fires before outlet 0 (pitch), so vel arrives at the
# cold inlet first; then pitch hits the hot inlet and triggers output.
mf_pack = newobj("pack 0 0", 200, 1005, 80, 22, ins=2, outs=1,
                 outlettype=[""])
connect(makenote, 0, mf_pack, 0)   # pitch — HOT
connect(makenote, 1, mf_pack, 1)   # velocity — cold

midiformat_obj = newobj("midiformat", 200, 1035, 90, 22, ins=8, outs=1,
                        outlettype=["int"])
connect(mf_pack, 0, midiformat_obj, 0)

midiout = newobj("midiout", 200, 1065, 70, 22, ins=1, outs=0,
                 outlettype=[])
connect(midiformat_obj, 0, midiout, 0)

# ----- MIDI Passthrough: forward upstream MIDI when toggle is ON -----
midiin_obj = newobj("midiin", 50, 1100, 70, 22, ins=1, outs=1,
                    outlettype=["int"])
pass_gate = newobj("gate 1", 50, 1130, 60, 22, ins=2, outs=1,
                   outlettype=["int"])
connect(pass_toggle, 0, pass_gate, 0)
connect(midiin_obj, 0, pass_gate, 1)
connect(pass_gate, 0, midiout, 0)

# ----- Chord mode (scale-aware): inject extra lookups for degree+2 (3rd in
# current scale) and degree+4 (5th in current scale) into the SAME
# `scales_coll`. The existing main flow (scales_coll → note_pak → makenote
# → midiformat → midiout) processes each emitted semitone, scheduling
# additional notes in rapid succession — that's the chord.
# Result is a triad whose intervals follow the chosen scale (e.g. major
# triad on root degree of Major scale, minor triad on root of Minor scale,
# diminished on root of Locrian, etc.).
def chord_voice_scale(deg_offset, x_base, y_base):
    """Add a scale-aware chord voice that pushes another scale lookup into
    scales_coll when the chord toggle is ON."""
    v_offset = newobj(f"+ {deg_offset}", x_base, y_base, 50, 22,
                      ins=2, outs=1, outlettype=["int"])
    connect(deg_split, 0, v_offset, 0)

    v_one_based = newobj("+ 1", x_base, y_base + 22, 50, 22,
                         ins=2, outs=1, outlettype=["int"])
    connect(v_offset, 0, v_one_based, 0)

    v_pack = newobj("pack 0 0", x_base, y_base + 44, 80, 22,
                    ins=2, outs=1, outlettype=[""])
    connect(v_one_based, 0, v_pack, 0)
    connect(scale_to_int, 0, v_pack, 1)

    v_msg = msg("nth $2 $1", x_base, y_base + 66, 80)
    connect(v_pack, 0, v_msg, 0)

    v_chord_gate = newobj("gate 1", x_base, y_base + 88, 60, 22,
                          ins=2, outs=1, outlettype=[""])
    connect(chord_toggle, 0, v_chord_gate, 0)
    connect(v_msg, 0, v_chord_gate, 1)
    connect(v_chord_gate, 0, scales_coll, 0)

# Voice 2: 3rd in current scale (degree + 2)
chord_voice_scale(2, 1500, 100)
# Voice 3: 5th in current scale (degree + 4)
chord_voice_scale(4, 1500, 200)

# ----- Patching-view info comments -----
comment("AURORA — Generative MIDI Sequencer  ·  v1.0",
        50, 200, 420, 18, fontsize=14.0)
comment("Markov walk · scale quantizer · per-step probability · tempo sync",
        50, 220, 540, 18, fontsize=10.0)
comment("→ scale lookup", 380, 760, 120, 18, fontsize=9.0)
comment("→ midi note compose", 200, 815, 160, 18, fontsize=9.0)
comment("→ velocity humanize", 50, 790, 160, 18, fontsize=9.0)


# ============================================================================
# ASSEMBLE PATCHER JSON
# ============================================================================

patcher = {
    "fileversion": 1,
    "appversion": {
        "major": 8,
        "minor": 5,
        "revision": 5,
        "architecture": "x64",
        "modernui": 1,
    },
    "classnamespace": "box",
    "rect": [80.0, 100.0, 460.0, 168.0],
    "bglocked": 0,
    "openinpresentation": 1,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [15.0, 15.0],
    "gridsnaponopen": 1,
    "objectsnaponopen": 1,
    "statusbarvisible": 2,
    "toolbarvisible": 1,
    "lefttoolbarpinned": 0,
    "toptoolbarpinned": 0,
    "righttoolbarpinned": 0,
    "bottomtoolbarpinned": 0,
    "toolbars_unpinned_last_save": 0,
    "tallnewobj": 0,
    "boxanimatetime": 200,
    "enablehscroll": 1,
    "enablevscroll": 1,
    "devicewidth": 460.0,
    "description": "AURORA - Generative Polyrhythmic MIDI Sequencer",
    "digest": "",
    "tags": "",
    "style": "",
    "subpatcher_template": "",
    "assistshowspatchername": 0,
    "boxes": boxes,
    "lines": lines,
    "dependency_cache": [],
    "autosave": 0,
}

document = {"patcher": patcher}
maxpat_path = os.path.join(OUT_DIR, "AURORA.maxpat")
with open(maxpat_path, "w") as f:
    json.dump(document, f, indent=2)
print(f"Wrote {maxpat_path}")

# ============================================================================
# .amxd binary container
# ============================================================================
json_bytes = json.dumps(document).encode("utf-8")


def be32(n: int) -> bytes:
    return struct.pack(">I", n)


# Structure (best-guess; verified format may vary across Live versions):
#   'ampf' [size] 'mx@c' [size] 'mDev' [size] 'ptch' [size] <json>
ptch_chunk = b"ptch" + be32(len(json_bytes)) + json_bytes
mDev_chunk = b"mDev" + be32(len(ptch_chunk)) + ptch_chunk
mxc_chunk = b"mx@c" + be32(len(mDev_chunk)) + mDev_chunk
ampf_chunk = b"ampf" + be32(len(mxc_chunk)) + mxc_chunk

amxd_path = os.path.join(OUT_DIR, "AURORA.amxd")
with open(amxd_path, "wb") as f:
    f.write(ampf_chunk)
print(f"Wrote {amxd_path} ({len(ampf_chunk)} bytes)")

print(f"\nObject count: {len(boxes)}")
print(f"Connection count: {len(lines)}")
print(f"M4L parameters: "
      f"{sum(1 for b in boxes if b['box'].get('parameter_enable'))}")
