{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 8,
      "minor": 5,
      "revision": 5,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      80.0,
      100.0,
      460.0,
      168.0
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [
      15.0,
      15.0
    ],
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
    "boxes": [
      {
        "box": {
          "id": "obj-1",
          "maxclass": "panel",
          "patching_rect": [
            0,
            0,
            460,
            168
          ],
          "presentation": 1,
          "presentation_rect": [
            0,
            0,
            460,
            168
          ],
          "bgcolor": [
            0.13,
            0.14,
            0.16,
            1.0
          ],
          "border": 0,
          "rounded": 4,
          "background": 1,
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "comment",
          "text": "AURORA",
          "patching_rect": [
            0,
            0,
            130,
            22
          ],
          "fontsize": 17.0,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Black",
          "textjustification": 0,
          "presentation": 1,
          "presentation_rect": [
            12,
            4,
            120,
            22
          ],
          "textcolor": [
            0.95,
            0.65,
            0.2,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "comment",
          "text": "generative sequencer",
          "patching_rect": [
            0,
            0,
            180,
            14
          ],
          "fontsize": 9.0,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial",
          "textjustification": 0,
          "presentation": 1,
          "presentation_rect": [
            136,
            10,
            180,
            14
          ],
          "textcolor": [
            0.55,
            0.55,
            0.55,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "ubutton",
          "patching_rect": [
            10,
            1300,
            120,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            12,
            4,
            120,
            22
          ],
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "bang",
            "",
            "",
            "int"
          ],
          "bgcolor": [
            0.0,
            0.0,
            0.0,
            0.0
          ],
          "bgoncolor": [
            0.95,
            0.65,
            0.2,
            0.15
          ],
          "annotation": "Click to open the AURORA repository on GitHub."
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "message",
          "text": "; max launchbrowser https://github.com/adriank1410/aurora-m4l-sequencer",
          "patching_rect": [
            150,
            1300,
            460,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "live.toggle",
          "patching_rect": [
            20,
            1000,
            17,
            17
          ],
          "presentation": 1,
          "presentation_rect": [
            434,
            6,
            18,
            18
          ],
          "varname": "power",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "parameter_enable": 1,
          "annotation": "Master ON/OFF for the generative sequencer.",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Power",
              "parameter_shortname": "Pwr",
              "parameter_type": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ],
              "parameter_range": [
                0,
                1
              ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "comment",
          "text": "MASTER ON",
          "patching_rect": [
            0,
            0,
            130,
            12
          ],
          "fontsize": 9.0,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 2,
          "presentation": 1,
          "presentation_rect": [
            300,
            8,
            130,
            12
          ],
          "textcolor": [
            0.95,
            0.65,
            0.2,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "comment",
          "text": "STEPS",
          "patching_rect": [
            0,
            0,
            42,
            12
          ],
          "fontsize": 8.5,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            56,
            44,
            42,
            12
          ],
          "textcolor": [
            0.85,
            0.85,
            0.85,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "comment",
          "text": "RATE",
          "patching_rect": [
            0,
            0,
            48,
            12
          ],
          "fontsize": 8.5,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            99,
            44,
            48,
            12
          ],
          "textcolor": [
            0.85,
            0.85,
            0.85,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "comment",
          "text": "ROOT",
          "patching_rect": [
            0,
            0,
            40,
            12
          ],
          "fontsize": 8.5,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            148,
            44,
            40,
            12
          ],
          "textcolor": [
            0.85,
            0.85,
            0.85,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "comment",
          "text": "SCALE",
          "patching_rect": [
            0,
            0,
            94,
            12
          ],
          "fontsize": 8.5,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            188,
            44,
            94,
            12
          ],
          "textcolor": [
            0.85,
            0.85,
            0.85,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-12",
          "maxclass": "comment",
          "text": "OCTAVE",
          "patching_rect": [
            0,
            0,
            46,
            12
          ],
          "fontsize": 8.5,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            282,
            44,
            46,
            12
          ],
          "textcolor": [
            0.85,
            0.85,
            0.85,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "live.dial",
          "patching_rect": [
            20,
            1010,
            36,
            41
          ],
          "presentation": 1,
          "presentation_rect": [
            14,
            36,
            36,
            41
          ],
          "varname": "density",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "annotation": "Probability of triggering a note per step (0-100%).",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Density",
              "parameter_shortname": "Dens",
              "parameter_type": 0,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                75.0
              ],
              "parameter_range": [
                0.0,
                100.0
              ],
              "parameter_unitstyle": 5,
              "parameter_exponent": 1.0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "live.numbox",
          "patching_rect": [
            20,
            1020,
            50,
            17
          ],
          "presentation": 1,
          "presentation_rect": [
            58,
            58,
            38,
            17
          ],
          "varname": "steps",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "annotation": "Sequence length in steps (1-32).",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Steps",
              "parameter_shortname": "Stp",
              "parameter_type": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                16
              ],
              "parameter_range": [
                1,
                32
              ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "live.menu",
          "patching_rect": [
            20,
            1030,
            80,
            17
          ],
          "presentation": 1,
          "presentation_rect": [
            100,
            58,
            46,
            17
          ],
          "varname": "rate_sel",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "parameter_enable": 1,
          "annotation": "Step rate, synced to Live's transport (1/4 to 1/32, with triplets).",
          "items": [
            "1/4",
            "1/4t",
            "1/8",
            "1/8t",
            "1/16",
            "1/16t",
            "1/32"
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Rate",
              "parameter_shortname": "Rate",
              "parameter_type": 2,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                4
              ],
              "parameter_enum": [
                "1/4",
                "1/4t",
                "1/8",
                "1/8t",
                "1/16",
                "1/16t",
                "1/32"
              ],
              "parameter_range": [
                "1/4",
                "1/4t",
                "1/8",
                "1/8t",
                "1/16",
                "1/16t",
                "1/32"
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "live.menu",
          "patching_rect": [
            20,
            1040,
            80,
            17
          ],
          "presentation": 1,
          "presentation_rect": [
            150,
            58,
            36,
            17
          ],
          "varname": "root_sel",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "parameter_enable": 1,
          "annotation": "Root note of the scale (C through B).",
          "items": [
            "C",
            "C#",
            "D",
            "D#",
            "E",
            "F",
            "F#",
            "G",
            "G#",
            "A",
            "A#",
            "B"
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Root",
              "parameter_shortname": "Root",
              "parameter_type": 2,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_enum": [
                "C",
                "C#",
                "D",
                "D#",
                "E",
                "F",
                "F#",
                "G",
                "G#",
                "A",
                "A#",
                "B"
              ],
              "parameter_range": [
                "C",
                "C#",
                "D",
                "D#",
                "E",
                "F",
                "F#",
                "G",
                "G#",
                "A",
                "A#",
                "B"
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-17",
          "maxclass": "live.menu",
          "patching_rect": [
            20,
            1050,
            80,
            17
          ],
          "presentation": 1,
          "presentation_rect": [
            190,
            58,
            90,
            17
          ],
          "varname": "scale_sel",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "parameter_enable": 1,
          "annotation": "Musical scale used to quantize generated notes (35 modes from Live 12).",
          "items": [
            "Major",
            "Minor",
            "Dorian",
            "Mixolydian",
            "Lydian",
            "Phrygian",
            "Locrian",
            "Whole Tone",
            "Half-whole Dim.",
            "Whole-half Dim.",
            "Minor Blues",
            "Minor Pentatonic",
            "Major Pentatonic",
            "Harmonic Minor",
            "Harmonic Major",
            "Dorian #4",
            "Phrygian Dominant",
            "Melodic Minor",
            "Lydian Augmented",
            "Lydian Dominant",
            "Super Locrian",
            "8-Tone Spanish",
            "Bhairav",
            "Hungarian Minor",
            "Hirajoshi",
            "In-Sen",
            "Iwato",
            "Kumoi",
            "Pelog Selisir",
            "Pelog Tembung",
            "Messiaen 3",
            "Messiaen 4",
            "Messiaen 5",
            "Messiaen 6",
            "Messiaen 7"
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Scale",
              "parameter_shortname": "Scl",
              "parameter_type": 2,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ],
              "parameter_enum": [
                "Major",
                "Minor",
                "Dorian",
                "Mixolydian",
                "Lydian",
                "Phrygian",
                "Locrian",
                "Whole Tone",
                "Half-whole Dim.",
                "Whole-half Dim.",
                "Minor Blues",
                "Minor Pentatonic",
                "Major Pentatonic",
                "Harmonic Minor",
                "Harmonic Major",
                "Dorian #4",
                "Phrygian Dominant",
                "Melodic Minor",
                "Lydian Augmented",
                "Lydian Dominant",
                "Super Locrian",
                "8-Tone Spanish",
                "Bhairav",
                "Hungarian Minor",
                "Hirajoshi",
                "In-Sen",
                "Iwato",
                "Kumoi",
                "Pelog Selisir",
                "Pelog Tembung",
                "Messiaen 3",
                "Messiaen 4",
                "Messiaen 5",
                "Messiaen 6",
                "Messiaen 7"
              ],
              "parameter_range": [
                "Major",
                "Minor",
                "Dorian",
                "Mixolydian",
                "Lydian",
                "Phrygian",
                "Locrian",
                "Whole Tone",
                "Half-whole Dim.",
                "Whole-half Dim.",
                "Minor Blues",
                "Minor Pentatonic",
                "Major Pentatonic",
                "Harmonic Minor",
                "Harmonic Major",
                "Dorian #4",
                "Phrygian Dominant",
                "Melodic Minor",
                "Lydian Augmented",
                "Lydian Dominant",
                "Super Locrian",
                "8-Tone Spanish",
                "Bhairav",
                "Hungarian Minor",
                "Hirajoshi",
                "In-Sen",
                "Iwato",
                "Kumoi",
                "Pelog Selisir",
                "Pelog Tembung",
                "Messiaen 3",
                "Messiaen 4",
                "Messiaen 5",
                "Messiaen 6",
                "Messiaen 7"
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "live.numbox",
          "patching_rect": [
            20,
            1060,
            50,
            17
          ],
          "presentation": 1,
          "presentation_rect": [
            286,
            58,
            38,
            17
          ],
          "varname": "octave",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "annotation": "Base octave offset (-2 to +4 around middle C).",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Octave",
              "parameter_shortname": "Oct",
              "parameter_type": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_range": [
                -2,
                4
              ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "live.dial",
          "patching_rect": [
            20,
            1070,
            36,
            41
          ],
          "presentation": 1,
          "presentation_rect": [
            330,
            36,
            36,
            41
          ],
          "varname": "octrange",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "annotation": "Range of the Markov walk in scale degrees (\u2248 octaves).",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Range",
              "parameter_shortname": "Rng",
              "parameter_type": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                2.0
              ],
              "parameter_range": [
                1.0,
                4.0
              ],
              "parameter_unitstyle": 0,
              "parameter_exponent": 1.0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "live.toggle",
          "patching_rect": [
            20,
            1075,
            17,
            17
          ],
          "presentation": 1,
          "presentation_rect": [
            372,
            57,
            14,
            14
          ],
          "varname": "latch",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "parameter_enable": 1,
          "annotation": "Latch mode: hold each note until the next one replaces it (legato sustain).",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Latch",
              "parameter_shortname": "Lat",
              "parameter_type": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_range": [
                0,
                1
              ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "live.toggle",
          "patching_rect": [
            20,
            1076,
            17,
            17
          ],
          "presentation": 1,
          "presentation_rect": [
            402,
            57,
            14,
            14
          ],
          "varname": "passthrough",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "parameter_enable": 1,
          "annotation": "Pass MIDI from upstream devices through to the next device (chain MIDI from arpeggiators / keyboards).",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Passthrough",
              "parameter_shortname": "Pas",
              "parameter_type": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_range": [
                0,
                1
              ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "live.toggle",
          "patching_rect": [
            20,
            1077,
            17,
            17
          ],
          "presentation": 1,
          "presentation_rect": [
            432,
            57,
            14,
            14
          ],
          "varname": "chord",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "parameter_enable": 1,
          "annotation": "Chord mode: emit a triad (root + 3rd + 5th) within the current scale instead of a single note.",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Chord",
              "parameter_shortname": "Crd",
              "parameter_type": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_range": [
                0,
                1
              ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "comment",
          "text": "LATCH",
          "patching_rect": [
            0,
            0,
            34,
            12
          ],
          "fontsize": 8.5,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            362,
            44,
            34,
            12
          ],
          "textcolor": [
            0.3,
            0.78,
            0.95,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "comment",
          "text": "PASS",
          "patching_rect": [
            0,
            0,
            30,
            12
          ],
          "fontsize": 8.5,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            394,
            44,
            30,
            12
          ],
          "textcolor": [
            0.3,
            0.78,
            0.95,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "comment",
          "text": "CHORD",
          "patching_rect": [
            0,
            0,
            34,
            12
          ],
          "fontsize": 8.5,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            422,
            44,
            34,
            12
          ],
          "textcolor": [
            0.3,
            0.78,
            0.95,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "live.numbox",
          "patching_rect": [
            20,
            1080,
            50,
            17
          ],
          "varname": "step_pos",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "live.dial",
          "patching_rect": [
            20,
            1110,
            36,
            41
          ],
          "presentation": 1,
          "presentation_rect": [
            12,
            92,
            36,
            41
          ],
          "varname": "walk",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "annotation": "Probability of stepping \u00b11 (Markov walk) vs random jump.",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Walk",
              "parameter_shortname": "Walk",
              "parameter_type": 0,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                65.0
              ],
              "parameter_range": [
                0.0,
                100.0
              ],
              "parameter_unitstyle": 5,
              "parameter_exponent": 1.0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "live.dial",
          "patching_rect": [
            20,
            1120,
            36,
            41
          ],
          "presentation": 1,
          "presentation_rect": [
            52,
            92,
            36,
            41
          ],
          "varname": "chaos",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "annotation": "Probability of a fully random note overriding the walk.",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Chaos",
              "parameter_shortname": "Chaos",
              "parameter_type": 0,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                15.0
              ],
              "parameter_range": [
                0.0,
                100.0
              ],
              "parameter_unitstyle": 5,
              "parameter_exponent": 1.0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "live.dial",
          "patching_rect": [
            20,
            1130,
            36,
            41
          ],
          "presentation": 1,
          "presentation_rect": [
            92,
            92,
            36,
            41
          ],
          "varname": "velocity",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "annotation": "Base MIDI velocity for emitted notes (1-127).",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Velocity",
              "parameter_shortname": "Vel",
              "parameter_type": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                100.0
              ],
              "parameter_range": [
                1.0,
                127.0
              ],
              "parameter_unitstyle": 0,
              "parameter_exponent": 1.0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "live.dial",
          "patching_rect": [
            20,
            1140,
            36,
            41
          ],
          "presentation": 1,
          "presentation_rect": [
            132,
            92,
            36,
            41
          ],
          "varname": "vel_rand",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "annotation": "Random velocity variation (humanize amount, 0-100%).",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "VelRand",
              "parameter_shortname": "VRnd",
              "parameter_type": 0,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                25.0
              ],
              "parameter_range": [
                0.0,
                100.0
              ],
              "parameter_unitstyle": 5,
              "parameter_exponent": 1.0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "live.dial",
          "patching_rect": [
            20,
            1150,
            36,
            41
          ],
          "presentation": 1,
          "presentation_rect": [
            172,
            92,
            36,
            41
          ],
          "varname": "length",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "annotation": "Note duration as a multiplier of the step duration.",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Length",
              "parameter_shortname": "Len",
              "parameter_type": 0,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0.5
              ],
              "parameter_range": [
                0.05,
                2.0
              ],
              "parameter_unitstyle": 1,
              "parameter_exponent": 1.0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-32",
          "maxclass": "live.dial",
          "patching_rect": [
            20,
            1160,
            36,
            41
          ],
          "presentation": 1,
          "presentation_rect": [
            212,
            92,
            36,
            41
          ],
          "varname": "swing",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "annotation": "Swing amount applied to odd steps (0-75%).",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Swing",
              "parameter_shortname": "Swng",
              "parameter_type": 0,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0.0
              ],
              "parameter_range": [
                0.0,
                75.0
              ],
              "parameter_unitstyle": 5,
              "parameter_exponent": 1.0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-33",
          "maxclass": "live.button",
          "patching_rect": [
            20,
            1170,
            20,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            296,
            102,
            22,
            22
          ],
          "varname": "reset",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "parameter_enable": 1,
          "annotation": "Reset step counter to 0 immediately.",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Reset",
              "parameter_shortname": "Rst",
              "parameter_type": 1,
              "parameter_range": [
                0,
                1
              ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "live.button",
          "patching_rect": [
            20,
            1180,
            20,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            338,
            102,
            22,
            22
          ],
          "varname": "evolve",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "parameter_enable": 1,
          "annotation": "Re-seed the Markov walk with a fresh random starting degree.",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Evolve",
              "parameter_shortname": "Evo",
              "parameter_type": 1,
              "parameter_range": [
                0,
                1
              ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-35",
          "maxclass": "live.toggle",
          "patching_rect": [
            20,
            1190,
            17,
            17
          ],
          "presentation": 1,
          "presentation_rect": [
            384,
            104,
            18,
            18
          ],
          "varname": "follow_live",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "parameter_enable": 1,
          "annotation": "When ON, override Root and Scale with Live's global Scale settings (Live 12+).",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Follow Live",
              "parameter_shortname": "Foll",
              "parameter_type": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ],
              "parameter_range": [
                0,
                1
              ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-36",
          "maxclass": "comment",
          "text": "RESET",
          "patching_rect": [
            0,
            0,
            60,
            12
          ],
          "fontsize": 8.5,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            277,
            125,
            60,
            12
          ],
          "textcolor": [
            0.85,
            0.85,
            0.85,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "comment",
          "text": "EVOLVE",
          "patching_rect": [
            0,
            0,
            60,
            12
          ],
          "fontsize": 8.5,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            319,
            125,
            60,
            12
          ],
          "textcolor": [
            0.3,
            0.78,
            0.95,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-38",
          "maxclass": "comment",
          "text": "FOLLOW",
          "patching_rect": [
            0,
            0,
            60,
            12
          ],
          "fontsize": 8.5,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            363,
            125,
            60,
            12
          ],
          "textcolor": [
            0.3,
            0.78,
            0.95,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-39",
          "maxclass": "comment",
          "text": "\u25c6  AURORA \u00b7 v1.0 \u00b7 by Adrian Kwiatkowski",
          "patching_rect": [
            0,
            0,
            240,
            14
          ],
          "fontsize": 8.5,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 0,
          "presentation": 1,
          "presentation_rect": [
            12,
            150,
            240,
            14
          ],
          "textcolor": [
            0.95,
            0.65,
            0.2,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-40",
          "maxclass": "ubutton",
          "patching_rect": [
            10,
            1330,
            240,
            14
          ],
          "presentation": 1,
          "presentation_rect": [
            12,
            150,
            240,
            14
          ],
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "bang",
            "",
            "",
            "int"
          ],
          "bgcolor": [
            0.0,
            0.0,
            0.0,
            0.0
          ],
          "bgoncolor": [
            0.95,
            0.65,
            0.2,
            0.15
          ],
          "annotation": "Click to open adriankwiatkowski.eu (Spotify, Bandcamp, SoundCloud, Apple Music links)."
        }
      },
      {
        "box": {
          "id": "obj-41",
          "maxclass": "message",
          "text": "; max launchbrowser https://adriankwiatkowski.eu",
          "patching_rect": [
            260,
            1330,
            320,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-42",
          "maxclass": "comment",
          "text": "Markov \u00b7 35 scales \u00b7 chord \u00b7 latch \u00b7 passthrough",
          "patching_rect": [
            0,
            0,
            280,
            14
          ],
          "fontsize": 8.0,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial",
          "textjustification": 2,
          "presentation": 1,
          "presentation_rect": [
            168,
            150,
            280,
            14
          ],
          "textcolor": [
            0.55,
            0.55,
            0.55,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-43",
          "maxclass": "newobj",
          "text": "live.thisdevice",
          "patching_rect": [
            50,
            250,
            120,
            22
          ],
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "bang",
            "bang",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-44",
          "maxclass": "newobj",
          "text": "coll",
          "patching_rect": [
            200,
            320,
            160,
            22
          ],
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-45",
          "maxclass": "newobj",
          "text": "loadbang",
          "patching_rect": [
            30,
            280,
            70,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "obj-46",
          "maxclass": "message",
          "text": "store 0 0 2 4 5 7 9 11 12 14 16 17 19",
          "patching_rect": [
            50,
            295,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-47",
          "maxclass": "message",
          "text": "store 1 0 2 3 5 7 8 10 12 14 15 17 19",
          "patching_rect": [
            54,
            297,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-48",
          "maxclass": "message",
          "text": "store 2 0 2 3 5 7 9 10 12 14 15 17 19",
          "patching_rect": [
            58,
            299,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-49",
          "maxclass": "message",
          "text": "store 3 0 2 4 5 7 9 10 12 14 16 17 19",
          "patching_rect": [
            62,
            301,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "message",
          "text": "store 4 0 2 4 6 7 9 11 12 14 16 18 19",
          "patching_rect": [
            66,
            303,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-51",
          "maxclass": "message",
          "text": "store 5 0 1 3 5 7 8 10 12 13 15 17 19",
          "patching_rect": [
            70,
            305,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-52",
          "maxclass": "message",
          "text": "store 6 0 1 3 5 6 8 10 12 13 15 17 18",
          "patching_rect": [
            74,
            307,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-53",
          "maxclass": "message",
          "text": "store 7 0 2 4 6 8 10 12 14 16 18 20 22",
          "patching_rect": [
            78,
            309,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-54",
          "maxclass": "message",
          "text": "store 8 0 1 3 4 6 7 9 10 12 13 15 16",
          "patching_rect": [
            82,
            311,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-55",
          "maxclass": "message",
          "text": "store 9 0 2 3 5 6 8 9 11 12 14 15 17",
          "patching_rect": [
            86,
            313,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-56",
          "maxclass": "message",
          "text": "store 10 0 3 5 6 7 10 12 15 17 18 19 22",
          "patching_rect": [
            90,
            315,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-57",
          "maxclass": "message",
          "text": "store 11 0 3 5 7 10 12 15 17 19 22 24 27",
          "patching_rect": [
            94,
            317,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-58",
          "maxclass": "message",
          "text": "store 12 0 2 4 7 9 12 14 16 19 21 24 26",
          "patching_rect": [
            98,
            319,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-59",
          "maxclass": "message",
          "text": "store 13 0 2 3 5 7 8 11 12 14 15 17 19",
          "patching_rect": [
            102,
            321,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-60",
          "maxclass": "message",
          "text": "store 14 0 2 4 5 7 8 11 12 14 16 17 19",
          "patching_rect": [
            106,
            323,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-61",
          "maxclass": "message",
          "text": "store 15 0 2 3 6 7 9 10 12 14 15 18 19",
          "patching_rect": [
            110,
            325,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-62",
          "maxclass": "message",
          "text": "store 16 0 1 4 5 7 8 10 12 13 16 17 19",
          "patching_rect": [
            114,
            327,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-63",
          "maxclass": "message",
          "text": "store 17 0 2 3 5 7 9 11 12 14 15 17 19",
          "patching_rect": [
            118,
            329,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-64",
          "maxclass": "message",
          "text": "store 18 0 2 4 6 8 9 11 12 14 16 18 20",
          "patching_rect": [
            122,
            331,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-65",
          "maxclass": "message",
          "text": "store 19 0 2 4 6 7 9 10 12 14 16 18 19",
          "patching_rect": [
            126,
            333,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-66",
          "maxclass": "message",
          "text": "store 20 0 1 3 4 6 8 10 12 13 15 16 18",
          "patching_rect": [
            130,
            335,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-67",
          "maxclass": "message",
          "text": "store 21 0 1 3 4 5 6 8 10 12 13 15 16",
          "patching_rect": [
            134,
            337,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-68",
          "maxclass": "message",
          "text": "store 22 0 1 4 5 7 8 11 12 13 16 17 19",
          "patching_rect": [
            138,
            339,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-69",
          "maxclass": "message",
          "text": "store 23 0 2 3 6 7 8 11 12 14 15 18 19",
          "patching_rect": [
            142,
            341,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-70",
          "maxclass": "message",
          "text": "store 24 0 2 3 7 8 12 14 15 19 20 24 26",
          "patching_rect": [
            146,
            343,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-71",
          "maxclass": "message",
          "text": "store 25 0 1 5 7 10 12 13 17 19 22 24 25",
          "patching_rect": [
            150,
            345,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-72",
          "maxclass": "message",
          "text": "store 26 0 1 5 6 10 12 13 17 18 22 24 25",
          "patching_rect": [
            154,
            347,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-73",
          "maxclass": "message",
          "text": "store 27 0 2 3 7 9 12 14 15 19 21 24 26",
          "patching_rect": [
            158,
            349,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-74",
          "maxclass": "message",
          "text": "store 28 0 1 3 7 8 12 13 15 19 20 24 25",
          "patching_rect": [
            162,
            351,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-75",
          "maxclass": "message",
          "text": "store 29 0 1 5 7 8 12 13 17 19 20 24 25",
          "patching_rect": [
            166,
            353,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-76",
          "maxclass": "message",
          "text": "store 30 0 2 3 4 6 7 8 10 11 12 14 15",
          "patching_rect": [
            170,
            355,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-77",
          "maxclass": "message",
          "text": "store 31 0 1 2 3 6 7 8 9 12 13 14 15",
          "patching_rect": [
            174,
            357,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-78",
          "maxclass": "message",
          "text": "store 32 0 1 5 6 7 11 12 13 17 18 19 23",
          "patching_rect": [
            178,
            359,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-79",
          "maxclass": "message",
          "text": "store 33 0 2 4 5 6 8 10 11 12 14 16 17",
          "patching_rect": [
            182,
            361,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-80",
          "maxclass": "message",
          "text": "store 34 0 1 2 3 5 6 7 8 9 11 12 13",
          "patching_rect": [
            186,
            363,
            280,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-81",
          "maxclass": "newobj",
          "text": "metro 16n @active 0",
          "patching_rect": [
            800,
            350,
            130,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "obj-82",
          "maxclass": "newobj",
          "text": "sel 0 1 2 3 4 5 6",
          "patching_rect": [
            800,
            320,
            150,
            22
          ],
          "numinlets": 1,
          "numoutlets": 8,
          "outlettype": [
            "bang",
            "bang",
            "bang",
            "bang",
            "bang",
            "bang",
            "bang",
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "obj-83",
          "maxclass": "message",
          "text": "interval 4n",
          "patching_rect": [
            700,
            295,
            80,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-84",
          "maxclass": "message",
          "text": "interval 4nt",
          "patching_rect": [
            790,
            295,
            80,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-85",
          "maxclass": "message",
          "text": "interval 8n",
          "patching_rect": [
            880,
            295,
            80,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-86",
          "maxclass": "message",
          "text": "interval 8nt",
          "patching_rect": [
            970,
            295,
            80,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-87",
          "maxclass": "message",
          "text": "interval 16n",
          "patching_rect": [
            1060,
            295,
            80,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-88",
          "maxclass": "message",
          "text": "interval 16nt",
          "patching_rect": [
            1150,
            295,
            80,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-89",
          "maxclass": "message",
          "text": "interval 32n",
          "patching_rect": [
            1240,
            295,
            80,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-90",
          "maxclass": "newobj",
          "text": "counter 0 0 31",
          "patching_rect": [
            800,
            380,
            100,
            22
          ],
          "numinlets": 5,
          "numoutlets": 4,
          "outlettype": [
            "int",
            "",
            "",
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-91",
          "maxclass": "newobj",
          "text": "- 1",
          "patching_rect": [
            900,
            350,
            50,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-92",
          "maxclass": "message",
          "text": "max $1",
          "patching_rect": [
            900,
            365,
            60,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-93",
          "maxclass": "message",
          "text": "jam 0",
          "patching_rect": [
            700,
            400,
            50,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-94",
          "maxclass": "newobj",
          "text": "random 100",
          "patching_rect": [
            600,
            420,
            90,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-95",
          "maxclass": "newobj",
          "text": "expr int($f1)",
          "patching_rect": [
            700,
            400,
            100,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-96",
          "maxclass": "newobj",
          "text": "<",
          "patching_rect": [
            600,
            450,
            50,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-97",
          "maxclass": "newobj",
          "text": "gate 1",
          "patching_rect": [
            600,
            480,
            60,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "obj-98",
          "maxclass": "newobj",
          "text": "t b",
          "patching_rect": [
            550,
            460,
            50,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "obj-99",
          "maxclass": "newobj",
          "text": "expr min(max(int($f1*3-1), 1), 11)",
          "patching_rect": [
            200,
            510,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-100",
          "maxclass": "newobj",
          "text": "int 6",
          "patching_rect": [
            200,
            540,
            50,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-101",
          "maxclass": "newobj",
          "text": "int 0",
          "patching_rect": [
            350,
            540,
            50,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-102",
          "maxclass": "newobj",
          "text": "t b b b b b",
          "patching_rect": [
            600,
            510,
            130,
            22
          ],
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": [
            "bang",
            "bang",
            "bang",
            "bang",
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "obj-103",
          "maxclass": "newobj",
          "text": "expr int($f1)",
          "patching_rect": [
            450,
            575,
            100,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-104",
          "maxclass": "newobj",
          "text": "expr int($f1)",
          "patching_rect": [
            800,
            575,
            100,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-105",
          "maxclass": "newobj",
          "text": "+ 1",
          "patching_rect": [
            600,
            575,
            50,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-106",
          "maxclass": "newobj",
          "text": "random 12",
          "patching_rect": [
            600,
            600,
            90,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-107",
          "maxclass": "newobj",
          "text": "t b",
          "patching_rect": [
            700,
            580,
            50,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "obj-108",
          "maxclass": "newobj",
          "text": "random 2",
          "patching_rect": [
            950,
            545,
            90,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-109",
          "maxclass": "newobj",
          "text": "expr ($i1*2)-1",
          "patching_rect": [
            950,
            575,
            110,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-110",
          "maxclass": "newobj",
          "text": "expr min(max($i1+$i2, 0), $i3)",
          "patching_rect": [
            950,
            605,
            220,
            22
          ],
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-111",
          "maxclass": "newobj",
          "text": "random 100",
          "patching_rect": [
            800,
            545,
            90,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-112",
          "maxclass": "newobj",
          "text": "random 100",
          "patching_rect": [
            450,
            545,
            90,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-113",
          "maxclass": "newobj",
          "text": "if $i1 < $i2 then $i3 else $i4",
          "patching_rect": [
            600,
            640,
            260,
            22
          ],
          "numinlets": 4,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-114",
          "maxclass": "newobj",
          "text": "if $i1 < $i2 then $i3 else $i4",
          "patching_rect": [
            600,
            670,
            260,
            22
          ],
          "numinlets": 4,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-115",
          "maxclass": "newobj",
          "text": "t i i",
          "patching_rect": [
            600,
            690,
            80,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "int",
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-116",
          "maxclass": "newobj",
          "text": "random 12",
          "patching_rect": [
            350,
            510,
            90,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-117",
          "maxclass": "newobj",
          "text": "live.path live_set",
          "patching_rect": [
            1100,
            460,
            140,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-118",
          "maxclass": "newobj",
          "text": "live.observer root_note",
          "patching_rect": [
            1100,
            490,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-119",
          "maxclass": "newobj",
          "text": "live.observer scale_name",
          "patching_rect": [
            1340,
            490,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-120",
          "maxclass": "message",
          "text": "property root_note",
          "patching_rect": [
            1100,
            462,
            140,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-121",
          "maxclass": "message",
          "text": "property scale_name",
          "patching_rect": [
            1340,
            462,
            140,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-122",
          "maxclass": "newobj",
          "text": "coll",
          "patching_rect": [
            1340,
            580,
            80,
            22
          ],
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-123",
          "maxclass": "message",
          "text": "store Major 0",
          "patching_rect": [
            1100,
            540,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-124",
          "maxclass": "message",
          "text": "store Minor 1",
          "patching_rect": [
            1170,
            540,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-125",
          "maxclass": "message",
          "text": "store Dorian 2",
          "patching_rect": [
            1240,
            540,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-126",
          "maxclass": "message",
          "text": "store Mixolydian 3",
          "patching_rect": [
            1310,
            540,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-127",
          "maxclass": "message",
          "text": "store Lydian 4",
          "patching_rect": [
            1100,
            558,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-128",
          "maxclass": "message",
          "text": "store Phrygian 5",
          "patching_rect": [
            1170,
            558,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-129",
          "maxclass": "message",
          "text": "store Locrian 6",
          "patching_rect": [
            1240,
            558,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-130",
          "maxclass": "message",
          "text": "store \"Whole Tone\" 7",
          "patching_rect": [
            1310,
            558,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-131",
          "maxclass": "message",
          "text": "store \"Half-whole Dim.\" 8",
          "patching_rect": [
            1100,
            576,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-132",
          "maxclass": "message",
          "text": "store \"Whole-half Dim.\" 9",
          "patching_rect": [
            1170,
            576,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-133",
          "maxclass": "message",
          "text": "store \"Minor Blues\" 10",
          "patching_rect": [
            1240,
            576,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-134",
          "maxclass": "message",
          "text": "store \"Minor Pentatonic\" 11",
          "patching_rect": [
            1310,
            576,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-135",
          "maxclass": "message",
          "text": "store \"Major Pentatonic\" 12",
          "patching_rect": [
            1100,
            594,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-136",
          "maxclass": "message",
          "text": "store \"Harmonic Minor\" 13",
          "patching_rect": [
            1170,
            594,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-137",
          "maxclass": "message",
          "text": "store \"Harmonic Major\" 14",
          "patching_rect": [
            1240,
            594,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-138",
          "maxclass": "message",
          "text": "store \"Dorian #4\" 15",
          "patching_rect": [
            1310,
            594,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-139",
          "maxclass": "message",
          "text": "store \"Phrygian Dominant\" 16",
          "patching_rect": [
            1100,
            612,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-140",
          "maxclass": "message",
          "text": "store \"Melodic Minor\" 17",
          "patching_rect": [
            1170,
            612,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-141",
          "maxclass": "message",
          "text": "store \"Lydian Augmented\" 18",
          "patching_rect": [
            1240,
            612,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-142",
          "maxclass": "message",
          "text": "store \"Lydian Dominant\" 19",
          "patching_rect": [
            1310,
            612,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-143",
          "maxclass": "message",
          "text": "store \"Super Locrian\" 20",
          "patching_rect": [
            1100,
            630,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-144",
          "maxclass": "message",
          "text": "store \"8-Tone Spanish\" 21",
          "patching_rect": [
            1170,
            630,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-145",
          "maxclass": "message",
          "text": "store Bhairav 22",
          "patching_rect": [
            1240,
            630,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-146",
          "maxclass": "message",
          "text": "store \"Hungarian Minor\" 23",
          "patching_rect": [
            1310,
            630,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-147",
          "maxclass": "message",
          "text": "store Hirajoshi 24",
          "patching_rect": [
            1100,
            648,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-148",
          "maxclass": "message",
          "text": "store In-Sen 25",
          "patching_rect": [
            1170,
            648,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-149",
          "maxclass": "message",
          "text": "store Iwato 26",
          "patching_rect": [
            1240,
            648,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-150",
          "maxclass": "message",
          "text": "store Kumoi 27",
          "patching_rect": [
            1310,
            648,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-151",
          "maxclass": "message",
          "text": "store \"Pelog Selisir\" 28",
          "patching_rect": [
            1100,
            666,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-152",
          "maxclass": "message",
          "text": "store \"Pelog Tembung\" 29",
          "patching_rect": [
            1170,
            666,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-153",
          "maxclass": "message",
          "text": "store \"Messiaen 3\" 30",
          "patching_rect": [
            1240,
            666,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-154",
          "maxclass": "message",
          "text": "store \"Messiaen 4\" 31",
          "patching_rect": [
            1310,
            666,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-155",
          "maxclass": "message",
          "text": "store \"Messiaen 5\" 32",
          "patching_rect": [
            1100,
            684,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-156",
          "maxclass": "message",
          "text": "store \"Messiaen 6\" 33",
          "patching_rect": [
            1170,
            684,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-157",
          "maxclass": "message",
          "text": "store \"Messiaen 7\" 34",
          "patching_rect": [
            1240,
            684,
            240,
            18
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-158",
          "maxclass": "newobj",
          "text": "int",
          "patching_rect": [
            1100,
            560,
            50,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-159",
          "maxclass": "newobj",
          "text": "zl.reg",
          "patching_rect": [
            1340,
            560,
            80,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-160",
          "maxclass": "newobj",
          "text": "gate 1",
          "patching_rect": [
            1100,
            620,
            60,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-161",
          "maxclass": "newobj",
          "text": "gate 1",
          "patching_rect": [
            1340,
            620,
            60,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-162",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            1220,
            590,
            60,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-163",
          "maxclass": "newobj",
          "text": "pipe 0",
          "patching_rect": [
            1100,
            590,
            60,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-164",
          "maxclass": "newobj",
          "text": "expr int($i1)",
          "patching_rect": [
            480,
            720,
            100,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-165",
          "maxclass": "newobj",
          "text": "+ 1",
          "patching_rect": [
            460,
            730,
            50,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-166",
          "maxclass": "newobj",
          "text": "pack 0 0",
          "patching_rect": [
            500,
            750,
            90,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-167",
          "maxclass": "message",
          "text": "nth $2 $1",
          "patching_rect": [
            500,
            780,
            90,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-168",
          "maxclass": "newobj",
          "text": "pack 0 0 0",
          "patching_rect": [
            200,
            830,
            130,
            22
          ],
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-169",
          "maxclass": "newobj",
          "text": "expr $i1+$i2+(($i3+5)*12)",
          "patching_rect": [
            200,
            860,
            220,
            22
          ],
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-170",
          "maxclass": "newobj",
          "text": "clip 0 127",
          "patching_rect": [
            200,
            890,
            100,
            22
          ],
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-171",
          "maxclass": "newobj",
          "text": "expr int($f1)",
          "patching_rect": [
            50,
            830,
            100,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-172",
          "maxclass": "newobj",
          "text": "expr int($f1*1.27)",
          "patching_rect": [
            50,
            855,
            130,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-173",
          "maxclass": "newobj",
          "text": "expr max($i1, 1)",
          "patching_rect": [
            50,
            880,
            110,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-174",
          "maxclass": "newobj",
          "text": "random 128",
          "patching_rect": [
            50,
            905,
            90,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-175",
          "maxclass": "newobj",
          "text": "t b",
          "patching_rect": [
            50,
            805,
            50,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "obj-176",
          "maxclass": "newobj",
          "text": "expr min(max($i1+$i2-($i3/2), 1), 127)",
          "patching_rect": [
            50,
            935,
            260,
            22
          ],
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-177",
          "maxclass": "newobj",
          "text": "expr int($f1*500.)",
          "patching_rect": [
            480,
            900,
            130,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-178",
          "maxclass": "newobj",
          "text": "pak 0 0",
          "patching_rect": [
            480,
            920,
            80,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-179",
          "maxclass": "newobj",
          "text": "unpack 0 0",
          "patching_rect": [
            480,
            945,
            80,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "int",
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-180",
          "maxclass": "newobj",
          "text": "expr ($i1==1)*99999 + ($i1==0)*max($i2, 250)",
          "patching_rect": [
            480,
            970,
            260,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-181",
          "maxclass": "newobj",
          "text": "% 2",
          "patching_rect": [
            700,
            700,
            50,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-182",
          "maxclass": "newobj",
          "text": "expr ($i1==1)*int($f2*1.5)",
          "patching_rect": [
            700,
            730,
            230,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-183",
          "maxclass": "newobj",
          "text": "delay 0",
          "patching_rect": [
            700,
            760,
            80,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "obj-184",
          "maxclass": "newobj",
          "text": "makenote 100 250",
          "patching_rect": [
            200,
            970,
            140,
            22
          ],
          "numinlets": 3,
          "numoutlets": 2,
          "outlettype": [
            "int",
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-185",
          "maxclass": "newobj",
          "text": "pack 0 0",
          "patching_rect": [
            200,
            1005,
            80,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-186",
          "maxclass": "newobj",
          "text": "midiformat",
          "patching_rect": [
            200,
            1035,
            90,
            22
          ],
          "numinlets": 8,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-187",
          "maxclass": "newobj",
          "text": "midiout",
          "patching_rect": [
            200,
            1065,
            70,
            22
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": []
        }
      },
      {
        "box": {
          "id": "obj-188",
          "maxclass": "newobj",
          "text": "midiin",
          "patching_rect": [
            50,
            1100,
            70,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-189",
          "maxclass": "newobj",
          "text": "gate 1",
          "patching_rect": [
            50,
            1130,
            60,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-190",
          "maxclass": "newobj",
          "text": "+ 2",
          "patching_rect": [
            1500,
            100,
            50,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-191",
          "maxclass": "newobj",
          "text": "+ 1",
          "patching_rect": [
            1500,
            122,
            50,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-192",
          "maxclass": "newobj",
          "text": "pack 0 0",
          "patching_rect": [
            1500,
            144,
            80,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-193",
          "maxclass": "message",
          "text": "nth $2 $1",
          "patching_rect": [
            1500,
            166,
            80,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-194",
          "maxclass": "newobj",
          "text": "gate 1",
          "patching_rect": [
            1500,
            188,
            60,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-195",
          "maxclass": "newobj",
          "text": "+ 4",
          "patching_rect": [
            1500,
            200,
            50,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-196",
          "maxclass": "newobj",
          "text": "+ 1",
          "patching_rect": [
            1500,
            222,
            50,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-197",
          "maxclass": "newobj",
          "text": "pack 0 0",
          "patching_rect": [
            1500,
            244,
            80,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-198",
          "maxclass": "message",
          "text": "nth $2 $1",
          "patching_rect": [
            1500,
            266,
            80,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-199",
          "maxclass": "newobj",
          "text": "gate 1",
          "patching_rect": [
            1500,
            288,
            60,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-200",
          "maxclass": "comment",
          "text": "AURORA \u2014 Generative MIDI Sequencer  \u00b7  v1.0",
          "patching_rect": [
            50,
            200,
            420,
            18
          ],
          "fontsize": 14.0,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 1
        }
      },
      {
        "box": {
          "id": "obj-201",
          "maxclass": "comment",
          "text": "Markov walk \u00b7 scale quantizer \u00b7 per-step probability \u00b7 tempo sync",
          "patching_rect": [
            50,
            220,
            540,
            18
          ],
          "fontsize": 10.0,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 1
        }
      },
      {
        "box": {
          "id": "obj-202",
          "maxclass": "comment",
          "text": "\u2192 scale lookup",
          "patching_rect": [
            380,
            760,
            120,
            18
          ],
          "fontsize": 9.0,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 1
        }
      },
      {
        "box": {
          "id": "obj-203",
          "maxclass": "comment",
          "text": "\u2192 midi note compose",
          "patching_rect": [
            200,
            815,
            160,
            18
          ],
          "fontsize": 9.0,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 1
        }
      },
      {
        "box": {
          "id": "obj-204",
          "maxclass": "comment",
          "text": "\u2192 velocity humanize",
          "patching_rect": [
            50,
            790,
            160,
            18
          ],
          "fontsize": 9.0,
          "numinlets": 1,
          "numoutlets": 0,
          "fontname": "Arial Bold",
          "textjustification": 1
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "obj-5",
            0
          ],
          "source": [
            "obj-4",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-41",
            0
          ],
          "source": [
            "obj-40",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-46",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-46",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-46",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-47",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-47",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-47",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-48",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-48",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-48",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-49",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-49",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-49",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-50",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-50",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-50",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-51",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-51",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-51",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-52",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-52",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-52",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-53",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-53",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-53",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-54",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-54",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-54",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-55",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-55",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-55",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-56",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-56",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-56",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-57",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-57",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-57",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-58",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-58",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-58",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-59",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-59",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-59",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-60",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-60",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-60",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-61",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-61",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-61",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-62",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-62",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-62",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-63",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-63",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-63",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-64",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-64",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-64",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-65",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-65",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-65",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-66",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-66",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-66",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-67",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-67",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-67",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-68",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-68",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-68",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-69",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-69",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-69",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-70",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-70",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-70",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-71",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-71",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-71",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-72",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-72",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-72",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-73",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-73",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-73",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-74",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-74",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-74",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-75",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-75",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-75",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-76",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-76",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-76",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-77",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-77",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-77",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-78",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-78",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-78",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-79",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-79",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-79",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-80",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-80",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-80",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-81",
            0
          ],
          "source": [
            "obj-6",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-82",
            0
          ],
          "source": [
            "obj-15",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-83",
            0
          ],
          "source": [
            "obj-82",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-81",
            0
          ],
          "source": [
            "obj-83",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-84",
            0
          ],
          "source": [
            "obj-82",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-81",
            0
          ],
          "source": [
            "obj-84",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-85",
            0
          ],
          "source": [
            "obj-82",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-81",
            0
          ],
          "source": [
            "obj-85",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-86",
            0
          ],
          "source": [
            "obj-82",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-81",
            0
          ],
          "source": [
            "obj-86",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-87",
            0
          ],
          "source": [
            "obj-82",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-81",
            0
          ],
          "source": [
            "obj-87",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-88",
            0
          ],
          "source": [
            "obj-82",
            5
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-81",
            0
          ],
          "source": [
            "obj-88",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-89",
            0
          ],
          "source": [
            "obj-82",
            6
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-81",
            0
          ],
          "source": [
            "obj-89",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-90",
            0
          ],
          "source": [
            "obj-81",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-91",
            0
          ],
          "source": [
            "obj-14",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-92",
            0
          ],
          "source": [
            "obj-91",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-90",
            0
          ],
          "source": [
            "obj-92",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-93",
            0
          ],
          "source": [
            "obj-33",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-90",
            0
          ],
          "source": [
            "obj-93",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-26",
            0
          ],
          "source": [
            "obj-90",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-94",
            0
          ],
          "source": [
            "obj-81",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-95",
            0
          ],
          "source": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-96",
            0
          ],
          "source": [
            "obj-94",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-96",
            1
          ],
          "source": [
            "obj-95",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-97",
            0
          ],
          "source": [
            "obj-96",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-98",
            0
          ],
          "source": [
            "obj-81",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-97",
            1
          ],
          "source": [
            "obj-98",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-99",
            0
          ],
          "source": [
            "obj-19",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-100",
            0
          ],
          "source": [
            "obj-99",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-102",
            0
          ],
          "source": [
            "obj-97",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-103",
            0
          ],
          "source": [
            "obj-28",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-104",
            0
          ],
          "source": [
            "obj-27",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-105",
            1
          ],
          "source": [
            "obj-100",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-106",
            1
          ],
          "source": [
            "obj-105",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-105",
            0
          ],
          "source": [
            "obj-102",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-107",
            0
          ],
          "source": [
            "obj-102",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-106",
            0
          ],
          "source": [
            "obj-107",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-108",
            0
          ],
          "source": [
            "obj-102",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-109",
            0
          ],
          "source": [
            "obj-108",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-110",
            0
          ],
          "source": [
            "obj-101",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-110",
            1
          ],
          "source": [
            "obj-109",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-110",
            2
          ],
          "source": [
            "obj-100",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-101",
            0
          ],
          "source": [
            "obj-102",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-111",
            0
          ],
          "source": [
            "obj-102",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-112",
            0
          ],
          "source": [
            "obj-102",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-113",
            0
          ],
          "source": [
            "obj-111",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-113",
            1
          ],
          "source": [
            "obj-104",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-113",
            2
          ],
          "source": [
            "obj-110",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-113",
            3
          ],
          "source": [
            "obj-106",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-114",
            0
          ],
          "source": [
            "obj-112",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-114",
            1
          ],
          "source": [
            "obj-103",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-114",
            2
          ],
          "source": [
            "obj-106",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-114",
            3
          ],
          "source": [
            "obj-113",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-115",
            0
          ],
          "source": [
            "obj-114",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-101",
            1
          ],
          "source": [
            "obj-115",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-116",
            0
          ],
          "source": [
            "obj-34",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-101",
            1
          ],
          "source": [
            "obj-116",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-117",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-118",
            0
          ],
          "source": [
            "obj-117",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-119",
            0
          ],
          "source": [
            "obj-117",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-120",
            0
          ],
          "source": [
            "obj-117",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-118",
            0
          ],
          "source": [
            "obj-120",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-121",
            0
          ],
          "source": [
            "obj-117",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-119",
            0
          ],
          "source": [
            "obj-121",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-123",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-123",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-123",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-124",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-124",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-124",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-125",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-125",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-125",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-126",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-126",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-126",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-127",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-127",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-127",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-128",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-128",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-128",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-129",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-129",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-129",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-130",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-130",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-130",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-131",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-131",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-131",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-132",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-132",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-132",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-133",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-133",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-133",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-134",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-134",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-134",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-135",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-135",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-135",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-136",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-136",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-136",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-137",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-137",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-137",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-138",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-138",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-138",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-139",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-139",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-139",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-140",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-140",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-140",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-141",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-141",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-141",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-142",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-142",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-142",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-143",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-143",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-143",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-144",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-144",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-144",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-145",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-145",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-145",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-146",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-146",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-146",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-147",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-147",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-147",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-148",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-148",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-148",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-149",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-149",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-149",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-150",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-150",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-150",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-151",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-151",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-151",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-152",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-152",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-152",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-153",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-153",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-153",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-154",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-154",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-154",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-155",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-155",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-155",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-156",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-156",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-156",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-157",
            0
          ],
          "source": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-157",
            0
          ],
          "source": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-157",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-158",
            1
          ],
          "source": [
            "obj-118",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-159",
            1
          ],
          "source": [
            "obj-119",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-160",
            0
          ],
          "source": [
            "obj-35",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-161",
            0
          ],
          "source": [
            "obj-35",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-162",
            0
          ],
          "source": [
            "obj-35",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-158",
            0
          ],
          "source": [
            "obj-162",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-159",
            0
          ],
          "source": [
            "obj-162",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-163",
            0
          ],
          "source": [
            "obj-158",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-160",
            1
          ],
          "source": [
            "obj-118",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-160",
            1
          ],
          "source": [
            "obj-163",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-16",
            0
          ],
          "source": [
            "obj-160",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-119",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-122",
            0
          ],
          "source": [
            "obj-159",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-161",
            1
          ],
          "source": [
            "obj-122",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-17",
            0
          ],
          "source": [
            "obj-161",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-164",
            0
          ],
          "source": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-165",
            0
          ],
          "source": [
            "obj-115",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-166",
            0
          ],
          "source": [
            "obj-165",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-166",
            1
          ],
          "source": [
            "obj-164",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-167",
            0
          ],
          "source": [
            "obj-166",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-167",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-168",
            0
          ],
          "source": [
            "obj-44",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-168",
            1
          ],
          "source": [
            "obj-16",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-168",
            2
          ],
          "source": [
            "obj-18",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-169",
            0
          ],
          "source": [
            "obj-168",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-170",
            0
          ],
          "source": [
            "obj-169",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-171",
            0
          ],
          "source": [
            "obj-29",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-172",
            0
          ],
          "source": [
            "obj-30",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-173",
            0
          ],
          "source": [
            "obj-172",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-174",
            1
          ],
          "source": [
            "obj-173",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-175",
            0
          ],
          "source": [
            "obj-115",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-174",
            0
          ],
          "source": [
            "obj-175",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-176",
            0
          ],
          "source": [
            "obj-171",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-176",
            1
          ],
          "source": [
            "obj-174",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-176",
            2
          ],
          "source": [
            "obj-172",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-177",
            0
          ],
          "source": [
            "obj-31",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-178",
            0
          ],
          "source": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-178",
            1
          ],
          "source": [
            "obj-177",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-179",
            0
          ],
          "source": [
            "obj-178",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-180",
            0
          ],
          "source": [
            "obj-179",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-180",
            1
          ],
          "source": [
            "obj-179",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-181",
            0
          ],
          "source": [
            "obj-90",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-182",
            0
          ],
          "source": [
            "obj-181",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-182",
            1
          ],
          "source": [
            "obj-32",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-183",
            1
          ],
          "source": [
            "obj-182",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-184",
            0
          ],
          "source": [
            "obj-170",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-184",
            1
          ],
          "source": [
            "obj-176",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-184",
            2
          ],
          "source": [
            "obj-180",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-185",
            0
          ],
          "source": [
            "obj-184",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-185",
            1
          ],
          "source": [
            "obj-184",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-186",
            0
          ],
          "source": [
            "obj-185",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-187",
            0
          ],
          "source": [
            "obj-186",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-189",
            0
          ],
          "source": [
            "obj-21",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-189",
            1
          ],
          "source": [
            "obj-188",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-187",
            0
          ],
          "source": [
            "obj-189",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-190",
            0
          ],
          "source": [
            "obj-115",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-191",
            0
          ],
          "source": [
            "obj-190",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-192",
            0
          ],
          "source": [
            "obj-191",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-192",
            1
          ],
          "source": [
            "obj-164",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-193",
            0
          ],
          "source": [
            "obj-192",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-194",
            0
          ],
          "source": [
            "obj-22",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-194",
            1
          ],
          "source": [
            "obj-193",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-194",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-195",
            0
          ],
          "source": [
            "obj-115",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-196",
            0
          ],
          "source": [
            "obj-195",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-197",
            0
          ],
          "source": [
            "obj-196",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-197",
            1
          ],
          "source": [
            "obj-164",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-198",
            0
          ],
          "source": [
            "obj-197",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-199",
            0
          ],
          "source": [
            "obj-22",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-199",
            1
          ],
          "source": [
            "obj-198",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-199",
            0
          ]
        }
      }
    ],
    "dependency_cache": [],
    "autosave": 0
  }
}