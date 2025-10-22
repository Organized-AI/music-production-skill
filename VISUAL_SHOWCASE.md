# Visual Showcase: EP-133 K.O. II Music Production Skill

ASCII art visualizations and examples for the music production skill.

## Device Overview

```
╔════════════════════════════════════════════════════════════╗
║         TEENAGE ENGINEERING EP-133 K.O. II                  ║
║                                                              ║
║  ┌──────────────────────────────────────────────────────┐  ║
║  │  [DISPLAY]     120 BPM    Pattern A1    00:00:12     │  ║
║  └──────────────────────────────────────────────────────┘  ║
║                                                              ║
║    Pads (48 total - 4 groups x 12 pads):                   ║
║                                                              ║
║    Group A: [A1][A2][A3][A4][A5][A6]                       ║
║             [A7][A8][A9][A10][A11][A12]    KICKS          ║
║                                                              ║
║    Group B: [B1][B2][B3][B4][B5][B6]                       ║
║             [B7][B8][B9][B10][B11][B12]    SNARES         ║
║                                                              ║
║    Group C: [C1][C2][C3][C4][C5][C6]                       ║
║             [C7][C8][C9][C10][C11][C12]    CYMBALS        ║
║                                                              ║
║    Group D: [D1][D2][D3][D4][D5][D6]                       ║
║             [D7][D8][D9][D10][D11][D12]    BASS/SYNTH     ║
║                                                              ║
║  [ ◀ ]  [ ▶ ]  [ ■ ]  [ ● REC ]     [VOLUME]  [MASTER]   ║
╚════════════════════════════════════════════════════════════╝
          │                                            │
          └─── USB-C ───────────────────────── Computer
```

## System Architecture

```
┌─────────────────────────────────────────────────────────────┐
│  USER                                                        │
│  "Create a house beat at 128 BPM"                          │
└───────────────────────┬──────────────────────────────────────┘
                        │
                        ▼
┌─────────────────────────────────────────────────────────────┐
│  CLAUDE DESKTOP                                              │
│  - Natural language understanding                            │
│  - Intent parsing                                            │
│  - Skill selection                                          │
└───────────────────────┬──────────────────────────────────────┘
                        │
                        ▼
┌─────────────────────────────────────────────────────────────┐
│  MUSIC PRODUCTION SKILL (SKILL.md)                          │
│  - Pattern templates                                         │
│  - Genre knowledge                                          │
│  - Sound selection logic                                    │
└───────────────────────┬──────────────────────────────────────┘
                        │
                        ▼
┌─────────────────────────────────────────────────────────────┐
│  MCP SERVER (ep-133-koii)                                   │
│  Tools: connect, play_note, search_sounds, etc.            │
└───────────────────────┬──────────────────────────────────────┘
                        │
                        ▼
┌─────────────────────────────────────────────────────────────┐
│  EP-KOII SKILLS PACKAGE (Python)                            │
│  - MIDI interface                                            │
│  - Sample manager                                           │
│  - Device connection                                        │
└───────────────────────┬──────────────────────────────────────┘
                        │
                        ▼
┌─────────────────────────────────────────────────────────────┐
│  MIDI PROTOCOL                                               │
│  Note: 36-83  │  Velocity: 0-127  │  Duration: variable    │
└───────────────────────┬──────────────────────────────────────┘
                        │
                        ▼
┌─────────────────────────────────────────────────────────────┐
│  EP-133 K.O. II HARDWARE                                    │
│  🎵 Sound output → Speakers/Headphones                      │
└─────────────────────────────────────────────────────────────┘
```

## MIDI Note Mapping

```
Group A (Kicks & Low Percussion)
┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┐
│ A1  │ A2  │ A3  │ A4  │ A5  │ A6  │ A7  │ A8  │ A9  │ A10 │ A11 │ A12 │
│ 36  │ 37  │ 38  │ 39  │ 40  │ 41  │ 42  │ 43  │ 44  │ 45  │ 46  │ 47  │
└─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┘

Group B (Snares & Mid Percussion)
┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┐
│ B1  │ B2  │ B3  │ B4  │ B5  │ B6  │ B7  │ B8  │ B9  │ B10 │ B11 │ B12 │
│ 48  │ 49  │ 50  │ 51  │ 52  │ 53  │ 54  │ 55  │ 56  │ 57  │ 58  │ 59  │
└─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┘

Group C (Cymbals & Hi-Hats)
┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┐
│ C1  │ C2  │ C3  │ C4  │ C5  │ C6  │ C7  │ C8  │ C9  │ C10 │ C11 │ C12 │
│ 60  │ 61  │ 62  │ 63  │ 64  │ 65  │ 66  │ 67  │ 68  │ 69  │ 70  │ 71  │
└─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┘

Group D (Bass & Melodic/Synth)
┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┐
│ D1  │ D2  │ D3  │ D4  │ D5  │ D6  │ D7  │ D8  │ D9  │ D10 │ D11 │ D12 │
│ 72  │ 73  │ 74  │ 75  │ 76  │ 77  │ 78  │ 79  │ 80  │ 81  │ 82  │ 83  │
└─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┘
```

## Velocity Dynamics

```
Velocity Scale (0-127)

Very Soft (0-31)          Soft (32-63)
│░░░░░░░░░░░░░░░│         │░░░░░░░░░░░░░░░░░░│
│ Subtle         │         │ Background        │
│ Ambient        │         │ Gentle            │
└────────────────┘         └───────────────────┘

Medium (64-95)            Hard (96-127)
│████████████████│         │██████████████████████│
│ Standard       │         │ Accented              │
│ Normal play    │         │ Emphasized            │
└────────────────┘         └───────────────────────┘

Example Usage:
- Kick at 100: Strong punch
- Hat at 60: Subtle groove
- Snare at 127: Maximum impact
- Bass at 80: Present but controlled
```

## Pattern Visualization: House Beat

```
House Pattern (128 BPM, 4/4 Time)

Beat:     1   2   3   4   1   2   3   4
Step:     1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6
          ├─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
Kick:     █       █       █       █
Snare:            █               █
ClsdHat:    █   █   █   █   █   █   █   █
OpenHat:                                █

Timeline:
0.0s  → Kick (vel 100)
0.25s → Closed Hat (vel 60)
0.5s  → Snare (vel 90)
0.75s → Closed Hat (vel 60)
1.0s  → Kick (vel 100)
...
```

## Pattern Visualization: Trap Beat

```
Trap Pattern (140 BPM, 4/4 Time with triplets)

Beat:     1       2       3       4
Step:     1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6
          ├─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
808 Kick: █           █
Snare:            █               █
Hat(Trip):  ⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺  (fast)
OpenHat:                                █

Characteristics:
- Sparse, heavy kick
- Rapid hi-hat triplets
- Hard-hitting snare
- Open hat for emphasis
```

## Sound Library Organization

```
Sound Library (240+ Sounds)
├── Kicks (31 sounds)
│   ├── 808 Deep ───────────────── [A1, MIDI 36]
│   ├── Acoustic ──────────────── [A2, MIDI 37]
│   ├── Hard ──────────────────── [A3, MIDI 38]
│   └── ... 28 more
│
├── Snares (45 sounds)
│   ├── Snare Acoustic ────────── [B1, MIDI 48]
│   ├── Snare Tight ───────────── [B2, MIDI 49]
│   ├── Snare Clap ────────────── [B3, MIDI 50]
│   └── ... 42 more
│
├── Cymbals and Hats (53 sounds)
│   ├── Hi-Hat Closed ─────────── [C1, MIDI 60]
│   ├── Hi-Hat Open ───────────── [C2, MIDI 61]
│   ├── Crash ─────────────────── [C3, MIDI 62]
│   └── ... 50 more
│
├── Percussion (13 sounds)
│   ├── Shaker ────────────────── [Variable]
│   ├── Tambourine ────────────── [Variable]
│   └── ... 11 more
│
├── Bass (31 sounds)
│   ├── Bass Sub 808 ──────────── [D1, MIDI 72]
│   ├── Bass Reese Growl ──────── [D2, MIDI 73]
│   └── ... 29 more
│
└── Melodic & Synth (60 sounds)
    ├── Lead Bright ───────────── [Variable]
    ├── Pad Warm ──────────────── [Variable]
    └── ... 58 more
```

## Workflow Example: Creating a Beat

```
Step 1: Connect
┌────────────────────────────────────┐
│ User: "Connect to my EP-133"       │
└────────┬───────────────────────────┘
         │
         ▼
┌────────────────────────────────────┐
│ System: Scanning MIDI ports...     │
│ Found: EP-133 K.O. II              │
│ ✓ Connected successfully           │
└────────────────────────────────────┘

Step 2: Explore Sounds
┌────────────────────────────────────┐
│ User: "Show me kick sounds"        │
└────────┬───────────────────────────┘
         │
         ▼
┌────────────────────────────────────┐
│ System: Found 31 kicks:            │
│ • Kick 808 Deep (A1)               │
│ • Kick Acoustic (A2)               │
│ • Kick Hard (A3)                   │
│ • ...                              │
└────────────────────────────────────┘

Step 3: Test Sound
┌────────────────────────────────────┐
│ User: "Play 808 Deep"              │
└────────┬───────────────────────────┘
         │
         ▼
┌────────────────────────────────────┐
│ System: [BOOM! 🎵]                 │
│ Played: Kick 808 Deep              │
│ Velocity: 100, Duration: 0.2s     │
└────────────────────────────────────┘

Step 4: Build Pattern
┌────────────────────────────────────┐
│ User: "Create a house beat"        │
└────────┬───────────────────────────┘
         │
         ▼
┌────────────────────────────────────┐
│ System: Building pattern...        │
│ [BOOM] [tss] [PAH] [tss]          │
│ [BOOM] [tss] [PAH] [tss-ahhh]     │
│ Four-on-the-floor at 128 BPM      │
└────────────────────────────────────┘
```

## Genre Comparison Chart

```
┌─────────────┬──────────────┬──────────────┬──────────────┐
│   HOUSE     │    TRAP      │   TECHNO     │  BOOM BAP    │
├─────────────┼──────────────┼──────────────┼──────────────┤
│ 120-130 BPM │  140-160 BPM │  130-150 BPM │  85-95 BPM   │
├─────────────┼──────────────┼──────────────┼──────────────┤
│ Four-on-    │  Sparse      │  Driving     │  Laid-back   │
│ the-floor   │  808 kicks   │  relentless  │  groove      │
│ kick        │              │  kick        │              │
├─────────────┼──────────────┼──────────────┼──────────────┤
│ Off-beat    │  Fast hi-hat │  Minimal     │  Acoustic    │
│ hi-hats     │  triplets    │  percussion  │  drums       │
├─────────────┼──────────────┼──────────────┼──────────────┤
│ Snare on    │  Hard snare  │  Snare/clap  │  Snare on    │
│ 2 & 4       │  backbeat    │  on 2 & 4    │  3           │
└─────────────┴──────────────┴──────────────┴──────────────┘
```

## Connection Flow

```
Power On Device
      │
      ▼
   [USB-C]
      │
      ▼
┌──────────────┐
│   Computer   │
│   detects    │  ◄─── MIDI enumeration
│   EP-133     │
└──────┬───────┘
       │
       ▼
┌──────────────┐
│ MCP Server   │
│  connects    │  ◄─── Python mido library
│  to port     │
└──────┬───────┘
       │
       ▼
┌──────────────┐
│   Claude     │
│   confirms   │  ◄─── "Connected successfully!"
│  connection  │
└──────────────┘
```

## Latency Breakdown

```
User Input → Response Time

Natural Language ───────┐
"Play a kick"           │ 100-200ms (Claude processing)
                        │
Claude → Skill ─────────┤
Skill → MCP ───────────┤ 20-50ms (tool invocation)
                        │
MCP → Python ──────────┤ 10-20ms (function call)
                        │
Python → MIDI ─────────┤ 20-50ms (USB transmission)
                        │
MIDI → Hardware ───────┤ 5-10ms (device processing)
                        │
Hardware → Sound ──────┤ 5-10ms (DAC + amp)
                        │
Total: 160-340ms ◄──────┘ (typical: ~200ms)
```

## Sound Wave Representation

```
Kick Drum Waveform
Amplitude
    ▲
127 │█▄
    │  ▀▄
 64 │    ▀▄▄
    │       ▀▀▄▄▄
  0 │___________▀▀▀▀▀▀▀▀▀▀▀→ Time
    0ms        100ms      200ms

Snare Drum Waveform
Amplitude
    ▲
127 │ ▄█▄
    │█   █
 64 │     ▀▄
    │       ▀▄▄
  0 │__________▀▀▀▀▀▀▀▀→ Time
    0ms     80ms    150ms

Hi-Hat Waveform
Amplitude
    ▲
127 │▄█▄
    │▀ ▀▄
 64 │   ▀▄
    │     ▀
  0 │_______▀▀→ Time
    0ms   50ms
```

## Integration Points

```
┌───────────────────────────────────────────────────────────┐
│                   CLAUDE DESKTOP                          │
├───────────────────────────────────────────────────────────┤
│                                                            │
│  ┌────────────────────┐       ┌────────────────────┐     │
│  │  Natural Language  │───────│   Skills System    │     │
│  │     Interface      │       │   (SKILL.md)       │     │
│  └────────────────────┘       └─────────┬──────────┘     │
│                                          │                 │
│                                          ▼                 │
│                               ┌────────────────────┐      │
│                               │   MCP Protocol     │      │
│                               │   (Tool Calls)     │      │
│                               └─────────┬──────────┘      │
└───────────────────────────────────────────┼───────────────┘
                                            │
                                            ▼
┌───────────────────────────────────────────────────────────┐
│                  MCP SERVER (ep-133-koii)                 │
├───────────────────────────────────────────────────────────┤
│  connect_to_device()  │  play_note()  │  search_sounds() │
│  disconnect_device()  │  play_pad()   │  list_sounds()   │
└─────────────────────────────────┬─────────────────────────┘
                                  │
                                  ▼
┌───────────────────────────────────────────────────────────┐
│            EP-KOII SKILLS PACKAGE (Python)                │
├───────────────────────────────────────────────────────────┤
│  MIDIInterface  │  SampleManager  │  EP133Skill          │
└─────────────────────────────────┬─────────────────────────┘
                                  │
                                  ▼
                            [Hardware]
```

## Success Indicators

```
✓ Connection Successful
┌────────────────────────────────────────┐
│ Status: Connected                      │
│ Device: EP-133 K.O. II                 │
│ Port: Teenage Engineering EP-133       │
│ Latency: ~150ms                        │
│ Sounds Available: 240+                 │
│ Ready: ✓                               │
└────────────────────────────────────────┘

✗ Connection Failed
┌────────────────────────────────────────┐
│ Status: Disconnected                   │
│ Error: No MIDI ports found             │
│ Action Required:                       │
│  1. Check USB connection               │
│  2. Power on device                    │
│  3. Try different port                 │
└────────────────────────────────────────┘
```

---

**These visualizations help understand the system architecture and workflow!** 🎵🤖
