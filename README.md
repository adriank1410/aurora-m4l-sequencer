# AURORA — Generative MIDI Sequencer for Max for Live

A generative polyrhythmic MIDI sequencer device for Ableton Live 12 (Max for Live, MIDI effect). Combines a Markov walk over scale degrees with per-step probability gating, scale-aware chord generation, latch mode, MIDI passthrough, and follow-mode for Live 12's global Scale.

![Status](https://img.shields.io/badge/status-v1.0-orange) ![Live](https://img.shields.io/badge/Ableton-Live%2012-blue) ![License](https://img.shields.io/badge/license-MIT-green)

## Features

- **Markov walk** over scale degrees with adjustable probability of stepping (±1) vs random jump
- **35 scales** matching Live 12's transport-bar scale picker (Major, Minor, Dorian, …, Pelog Tembung, Messiaen 7)
- **Per-step probability** (Density)
- **Tempo-synced** to Live's transport (1/4 → 1/32 with triplets)
- **Chord mode** — emits a triad whose 3rd and 5th follow the chosen scale (major triad on Major, minor on Minor, diminished on Locrian, etc.)
- **Latch / legato mode** — sustain notes until the next one replaces them
- **MIDI passthrough** — chain MIDI from upstream devices (arpeggiators, keyboards) through to the next device
- **Follow Live's global Scale** — auto-syncs Root and Scale with Live 12's transport bar; works through toggle off→change→on cycles via a cached observer pattern
- **Markov re-seed** (Evolve) and counter reset (Reset) buttons
- All 20 parameters automatable, mappable, and annotated for Live's hover-info panel

## Install

1. Drag `AURORA.amxd` from the repo into a MIDI track in Ableton Live 12 (or copy to your User Library).
2. Add an instrument (Wavetable, Operator, Drum Rack, Simpler, VST, …) **after** AURORA in the track's device chain.
3. Arm the track or hit Play. Power is ON by default; Follow Live is ON by default. AURORA generates notes immediately.

## Parameters

| Name | Type | Range | Description |
|---|---|---|---|
| Power | toggle | 0/1 | Master ON/OFF |
| Density | dial | 0–100 % | Probability of triggering a note per step |
| Steps | numbox | 1–32 | Sequence length |
| Rate | menu | 1/4 … 1/32 | Step rate, tempo-synced |
| Root | menu | C … B | Root note of the scale |
| Scale | menu | 35 modes | Musical scale (matches Live 12) |
| Octave | numbox | -2 … +4 | Base octave offset |
| Range | dial | 1–4 | Markov walk range in scale degrees |
| Walk | dial | 0–100 % | Probability of stepping ±1 vs jumping |
| Chaos | dial | 0–100 % | Probability of fully random vs walk |
| Velocity | dial | 1–127 | Base MIDI velocity |
| VelRand | dial | 0–100 % | Velocity humanization |
| Length | dial | 0.05–2.0 | Note duration as fraction of step |
| Swing | dial | 0–75 % | Swing amount on odd steps |
| Reset | button | bang | Reset step counter to 0 |
| Evolve | button | bang | Re-seed Markov walk |
| Latch | toggle | 0/1 | Sustain notes (legato) |
| Passthrough | toggle | 0/1 | Forward upstream MIDI |
| Chord | toggle | 0/1 | Emit triad in current scale |
| Follow Live | toggle | 0/1 | Follow Live 12 global Scale |

Hover over any control in Live to see the description in the bottom info panel.

## Architecture

Generative engine: tempo-synced metro → step counter → density gate → Markov-walk decision tree (chaos roll → walk roll → degree) → scale-degree-to-semitone lookup via `[coll]` populated with all 35 Live 12 scales → MIDI note compose (root + octave + semitone) → makenote → midiformat → midiout. Chord mode fires two extra `nth` lookups (degree+2, degree+4) into the same coll, so the existing main flow naturally produces a triad whose intervals follow the chosen scale.

Follow Live uses `[live.path live_set]` + `[live.observer root_note]` + `[live.observer scale_name]`, with cached values in `[int]` and `[zl.reg]`. A `[sel 1]` on the Follow toggle catches the off→on transition and emits the cached value through the gate so re-enabling Follow always picks up Live's current Scale and Root immediately.

`aurora_build.py` is the patch generator — it composes the `.maxpat` JSON programmatically and wraps it in a self-contained binary `.amxd` container (nested big-endian `ampf` → `mx@c` → `mDev` → `ptch` chunks). No external template file is needed.

## Compatibility

- **Ableton Live 12** required for full Follow Live (global Scale) support — Live 11 doesn't expose `scale_name` on the song object; Follow Live will silently no-op for the scale (Root still follows).
- **Max for Live 8.5+**.
- Built and tested on macOS. Windows untested but should work.

## Build / Modify

`aurora_build.py` (Python 3.11+) generates both the `.maxpat` (Max patch) and the `.amxd` (Live device) files. The script writes the patcher dictionary as JSON, then wraps it in a self-generated `.amxd` binary container. Output files are written next to the script. Edit the script and re-run to regenerate.

```bash
python3.11 aurora_build.py
```

The `.amxd` binary container format is nested big-endian chunks:

```
'ampf' [4-byte BE size] >
  'mx@c' [4-byte BE size] >
    'mDev' [4-byte BE size] >
      'ptch' [4-byte BE size] [N bytes of UTF-8 maxpat JSON]
```

The script generates this structure directly — no external template or reference `.amxd` is needed.

## Author

[Adrian Kwiatkowski](https://adriankwiatkowski.eu) — electronic music producer.

Listen: [Spotify](https://open.spotify.com/artist/0bnPfchFpM2qLv1xrCK727) · [Bandcamp](https://adriankwiatkowski.bandcamp.com) · [SoundCloud](https://soundcloud.com/adriank1410) · [Apple Music](https://music.apple.com/artist/adrian-kwiatkowski/1039714796) · [YouTube](https://www.youtube.com/c/AdrianKwiatkowski)

## License

MIT — see [LICENSE](LICENSE). You can edit, modify, redistribute, and use AURORA in commercial productions; please retain the copyright notice in derivative works.
