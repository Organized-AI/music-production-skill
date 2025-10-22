# Quick Reference Card

One-page reference for the EP-133 K.O. II Music Production Skill.

## Installation (One-Time)

```bash
# 1. Install package
pip install git+https://github.com/Organized-AI/ep-koii-skills.git

# 2. Add to claude_desktop_config.json
{
  "mcpServers": {
    "ep-133-koii": {
      "command": "python",
      "args": ["-m", "ep_koii_skills.mcp_server"]
    }
  }
}

# 3. Copy SKILL.md to Claude skills directory
cp SKILL.md ~/Library/Application\ Support/Claude/skills/  # macOS
```

## Essential Commands

### Connection
- `Connect to my EP-133`
- `Check connection status`
- `Disconnect from device`

### Sound Discovery
- `Show me all kick sounds`
- `List sounds in [category]`
- `Find [keyword] sounds`
- `What categories are available?`

### Playing Sounds
- `Play a kick drum`
- `Play [sound name]`
- `Play pad [A1-D12]`
- `Play note [36-83]`

### Pattern Creation
- `Create a [genre] beat at [BPM] BPM`
- `Make a drum pattern`
- `Play a four-on-the-floor kick pattern`

## Sound Categories (240+ Sounds)

| Category | Count | Examples |
|----------|-------|----------|
| Kicks | 31 | 808 Deep, Acoustic, Hard |
| Snares | 45 | Tight, Clap, Rimshot |
| Cymbals/Hats | 53 | Closed Hat, Open Hat, Crash |
| Percussion | 13 | Shaker, Tambourine, Conga |
| Bass | 31 | Sub 808, Reese, Synth Deep |
| Melodic/Synth | 60 | Lead, Pad, Pluck, FX |

## MIDI Mapping

```
Group A (36-47):  Kicks & Low Percussion
Group B (48-59):  Snares & Mid Percussion
Group C (60-71):  Cymbals & Hi-Hats
Group D (72-83):  Bass & Melodic/Synth
```

## Velocity Guidelines

| Range | Level | Use |
|-------|-------|-----|
| 0-31 | Very Soft | Subtle, ambient |
| 32-63 | Soft | Background |
| 64-95 | Medium | Standard |
| 96-127 | Hard | Accents |

## Genre Templates

### House (120-130 BPM)
- Kick: Four-on-the-floor (1, 5, 9, 13)
- Snare: Backbeat (5, 13)
- Hat: Off-beats (3, 7, 11, 15)

### Trap (140-160 BPM)
- Kick: Sparse 808 (1, 7)
- Snare: Hard (5, 13)
- Hat: Fast triplets

### Techno (130-150 BPM)
- Kick: Driving, every beat
- Hat: Minimal, 8ths
- Percussion: Sparse

### Boom Bap (85-95 BPM)
- Kick: Relaxed (1)
- Snare: Acoustic (3)
- Hat: Swung 16ths

## Troubleshooting

### No Connection
1. Check USB cable
2. Power on device
3. Try different USB port
4. Check MIDI permissions

### No Sound
1. Check device volume
2. Verify output routing
3. Try velocity 80-100
4. Test with different sound

### Skill Not Loading
1. Verify SKILL.md in correct directory
2. Restart Claude Desktop
3. Check config JSON syntax

## File Locations

**macOS:**
- Config: `~/Library/Application Support/Claude/claude_desktop_config.json`
- Skills: `~/Library/Application Support/Claude/skills/`

**Linux:**
- Config: `~/.config/Claude/claude_desktop_config.json`
- Skills: `~/.config/Claude/skills/`

**Windows:**
- Config: `%APPDATA%\Claude\claude_desktop_config.json`
- Skills: `%APPDATA%\Claude\skills\`

## Common Workflows

### First Beat
1. Connect to device
2. List kick sounds
3. Play a kick
4. Add snare on backbeat
5. Add hi-hats
6. Experiment with velocities

### Sound Exploration
1. List all categories
2. Browse category of interest
3. Play individual sounds
4. Build mental library
5. Note favorites

### Production Session
1. Connect device
2. Choose genre template
3. Select appropriate sounds
4. Build pattern step-by-step
5. Adjust velocities for dynamics
6. Experiment and iterate

## Support Resources

- **Repository**: https://github.com/Organized-AI/music-production-skill
- **Package**: https://github.com/Organized-AI/ep-koii-skills
- **Issues**: Report on GitHub
- **Docs**: README.md, START_HERE.md, VISUAL_SHOWCASE.md

---

**Quick tip**: Start with "Connect to my EP-133" and "Show me all categories" to explore!
