---
name: Music Production with EP-133 K.O. II
description: Control Teenage Engineering EP-133 K.O. II synthesizer through natural language - create beats, browse 240+ sounds, play patterns, and produce music conversationally
version: 1.0.0
author: Organized-AI
mcp_servers:
  - ep-133-koii
tags:
  - music-production
  - midi
  - hardware
  - synthesizer
  - ep-133
---

# Music Production Skill for EP-133 K.O. II

Control your Teenage Engineering EP-133 K.O. II synthesizer through natural conversation with Claude Desktop.

## What This Skill Does

This skill enables natural language control of the EP-133 K.O. II hardware synthesizer. You can:

- **Connect & Control**: "Connect to my EP-133" - Automatic USB-C connection
- **Browse Sounds**: "Show me all kicks" - Browse 240+ organized sounds
- **Search Library**: "Find bass sounds" - Search by name or category
- **Play Notes**: "Play a kick drum" - Trigger any of 48 pads
- **Create Patterns**: "Make a house beat at 128 BPM" - Generate drum patterns
- **Explore Genres**: Get patterns for House, Trap, Techno, Boom Bap, and more

## Sound Library

Access 240+ professionally organized sounds across 6 categories:

- **Kicks** (31 variations) - From deep 808s to punchy acoustic kicks
- **Snares** (45 variations) - Crisp snares, claps, rimshots, side sticks
- **Cymbals & Hats** (53 variations) - Hi-hats, rides, crashes, open/closed
- **Percussion** (13 variations) - Shakers, tambourines, congas, timbales
- **Bass** (31 variations) - Sub bass, 808 bass, synth bass, reese
- **Melodic & Synth** (60 variations) - Leads, pads, plucks, FX

## Example Conversations

### Quick Start
```
User: Connect to my EP-133
Assistant: [Scans MIDI ports and connects automatically]
Connected to EP-133 K.O. II! Ready to make music.

User: Play me a kick drum
Assistant: [Plays pad A1 - Kick 808 Deep]
```

### Sound Discovery
```
User: What bass sounds do you have?
Assistant: Found 31 bass sounds including:
- Bass Sub 808 (Pad D1)
- Bass Reese Growl (Pad D2)
- Bass Synth Deep (Pad D3)
[Shows full categorized list]

User: Play the 808 bass
Assistant: [Plays Bass Sub 808 at velocity 100]
```

### Pattern Creation
```
User: Create a house beat at 128 BPM
Assistant: Here's a classic house pattern:
[Generates 4-bar pattern with:]
- Kick on 1, 5, 9, 13 (four-on-the-floor)
- Closed hat on 3, 7, 11, 15
- Open hat on 16
- Clap on 5, 13
[Plays pattern in real-time]
```

### Genre Templates
```
User: Show me trap patterns
Assistant: Trap typically uses:
- Kicks: 808 Deep or 808 Long
- Snares: Snare Clap or Snare Tight
- Hats: Hi-Hat Closed (fast 16ths or triplets)
- Patterns: Heavy kick on 1 & 7, snare on 5 & 13

Want me to play an example?
```

## MCP Server Integration

This skill requires the `ep-133-koii` MCP server from the `ep-koii-skills` package.

### Installation

```bash
# Install the package
pip install git+https://github.com/Organized-AI/ep-koii-skills.git
```

### Configuration

Add to your `claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "ep-133-koii": {
      "command": "python",
      "args": ["-m", "ep_koii_skills.mcp_server"],
      "env": {}
    }
  }
}
```

**Config file locations:**
- macOS: `~/Library/Application Support/Claude/claude_desktop_config.json`
- Windows: `%APPDATA%\Claude\claude_desktop_config.json`
- Linux: `~/.config/Claude/claude_desktop_config.json`

### Hardware Setup

1. Power on EP-133 K.O. II
2. Connect via USB-C cable
3. Device appears as MIDI port (auto-detected)
4. No drivers needed on macOS/Linux
5. Windows may require MIDI drivers

## Available Tools

The MCP server provides 9 tools:

### Connection
- `list_midi_ports` - Scan for available MIDI devices
- `connect_to_device` - Connect to EP-133 by port name or index
- `disconnect_device` - Safely disconnect from device
- `check_connection` - Verify connection status

### Sound Control
- `play_note` - Trigger any pad (MIDI 36-83, velocity 0-127, duration)
- `play_pad` - Pad notation (A1-D12) for intuitive control

### Sound Library
- `list_sound_categories` - Get all 6 categories
- `list_sounds_in_category` - Browse sounds by category
- `search_sounds` - Find sounds by name/keyword

## Technical Details

### MIDI Configuration
- **Note Range**: 36-83 (48 pads)
- **Velocity Range**: 0-127 (128 levels)
- **Duration**: Adjustable (0.1-5.0 seconds typical)
- **Channel**: 0 (default), supports 0-15
- **Latency**: <150ms typical end-to-end

### Pad Layout
```
Group A (MIDI 36-47):  Kicks & low percussion
Group B (MIDI 48-59):  Snares & mid percussion
Group C (MIDI 60-71):  Cymbals & hi-hats
Group D (MIDI 72-83):  Bass & melodic sounds
```

### Velocity Guidelines
- **0-31**: Very soft, subtle sounds
- **32-63**: Soft, background elements
- **64-95**: Medium, standard playing
- **96-127**: Hard, accented hits

## Usage Tips

### For Claude
When a user asks to:
- **"Connect to EP-133"** → Use `connect_to_device` with auto-detection
- **"Play [sound]"** → Search library, then use `play_note` or `play_pad`
- **"Show me [category]"** → Use `list_sounds_in_category`
- **"Find [keyword]"** → Use `search_sounds`
- **"Create a beat"** → Generate pattern, play sequentially with timing

### Pattern Creation
For drum patterns, use standard timing:
- **4/4 time**: 16 steps per bar
- **Kick**: Steps 1, 5, 9, 13 (house) or 1, 7 (trap)
- **Snare**: Steps 5, 13 (standard backbeat)
- **Hi-hats**: Steps 3, 7, 11, 15 or 16th notes

### Sound Selection
When users request generic sounds:
- "kick" → Kick 808 Deep (reliable choice)
- "snare" → Snare Acoustic or Snare Tight
- "hi-hat" → Hi-Hat Closed
- "bass" → Bass Sub 808

## Troubleshooting

### No MIDI Ports Found
1. Verify EP-133 is powered on
2. Check USB-C cable connection
3. Try different USB port
4. On Linux: Add user to `audio` group

### Connection Fails
1. Close other MIDI applications
2. Disconnect and reconnect device
3. Restart Claude Desktop
4. Check device firmware is updated

### No Sound
1. Check EP-133 volume
2. Verify output routing on device
3. Try different velocities (64-100)
4. Ensure correct MIDI channel

### Import Errors
```bash
# Reinstall package
pip install --force-reinstall git+https://github.com/Organized-AI/ep-koii-skills.git
```

## Requirements

- **Hardware**: Teenage Engineering EP-133 K.O. II
- **Cable**: USB-C cable
- **OS**: macOS, Linux, or Windows
- **Python**: 3.8+ (for MCP server)
- **Dependencies**: mido >= 1.2.10

## Performance

- **Response Time**: <500ms for most operations
- **Concurrent Notes**: Supports polyphony
- **Pattern Playback**: Real-time with precise timing
- **Library Search**: Instant (<50ms)

## Best Practices

1. **Always connect first** - Check connection before playing
2. **Use descriptive requests** - "Play a deep kick" vs "Play something"
3. **Specify velocity** - For dynamic control
4. **Browse before playing** - Know what's available
5. **Test one sound** - Before playing full patterns

## Examples in Action

### Beginner: First Beat
```
User: I just got an EP-133, help me make my first beat
Assistant: Let's start simple!

[Connects to device]
[Lists kick options]
User: Try the 808 Deep
[Plays kick]

Now let's add a snare on beats 2 and 4:
[Plays pattern: Kick-Snare-Kick-Snare]

Add closed hi-hats:
[Plays full pattern with hats on every 8th note]

You just made your first beat! Want to try different sounds?
```

### Intermediate: Genre Exploration
```
User: Teach me about techno production
Assistant: Techno focuses on:

Kicks: Hard, punchy (Kick Hard, Kick Techno)
Percussion: Minimal but driving (Hi-Hat Closed 16ths)
Bass: Deep sub bass or rolling basslines

Here's a classic techno pattern:
[Demonstrates 4-bar techno loop with breakdown]

Notice the kick on every beat (four-on-the-floor) with
off-beat hi-hats creating movement.
```

### Advanced: Creative Sound Design
```
User: Help me layer sounds for a unique snare
Assistant: Let's layer 3 sounds for a custom snare:

1. Base: Snare Acoustic (velocity 80) - body
2. Snap: Snare Tight (velocity 100, -10ms) - attack
3. Tail: Cymbal Crash (velocity 40, +5ms) - space

[Plays layered combination]

The timing offsets create a wider, more complex sound.
Want to try different combinations?
```

## License

MIT License - See repository for details

## Support & Contributions

- **Repository**: https://github.com/Organized-AI/ep-koii-skills
- **Issues**: Report bugs or request features on GitHub
- **Contributions**: Pull requests welcome

## Version History

- **1.0.0** (October 2025) - Initial release
  - 240+ sounds across 6 categories
  - 9 MCP tools for device control
  - Natural language pattern generation
  - Genre template library

---

**Make hardware music production conversational!**
