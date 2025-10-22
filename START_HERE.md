# START HERE: 5-Minute Setup Guide

Get your EP-133 K.O. II talking to Claude Desktop in under 5 minutes.

## What You'll Need

- [ ] Teenage Engineering EP-133 K.O. II (powered on)
- [ ] USB-C cable
- [ ] Claude Desktop installed
- [ ] Python 3.8+ installed
- [ ] Internet connection (for initial setup)

## Step 1: Install the Package (1 minute)

Open your terminal and run:

```bash
pip install git+https://github.com/Organized-AI/ep-koii-skills.git
```

**Expected output:**
```
Successfully installed ep-koii-skills-1.0.0
```

**If you see an error:**
- Ensure Python 3.8+ is installed: `python --version`
- Try using `pip3` instead of `pip`

## Step 2: Configure Claude Desktop (2 minutes)

### Find Your Config File

**macOS:**
```bash
open ~/Library/Application\ Support/Claude/
```

**Linux:**
```bash
nano ~/.config/Claude/claude_desktop_config.json
```

**Windows:**
```powershell
notepad %APPDATA%\Claude\claude_desktop_config.json
```

### Add the MCP Server

Copy this into your `claude_desktop_config.json`:

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

**If you already have other MCP servers**, add a comma and append:

```json
{
  "mcpServers": {
    "existing-server": {
      "command": "...",
      "args": ["..."]
    },
    "ep-133-koii": {
      "command": "python",
      "args": ["-m", "ep_koii_skills.mcp_server"],
      "env": {}
    }
  }
}
```

**Save the file.**

## Step 3: Deploy the Skill (1 minute)

### Create Skills Directory (if needed)

**macOS:**
```bash
mkdir -p ~/Library/Application\ Support/Claude/skills/
```

**Linux:**
```bash
mkdir -p ~/.config/Claude/skills/
```

**Windows:**
```powershell
mkdir %APPDATA%\Claude\skills\
```

### Copy the Skill File

**macOS:**
```bash
cp SKILL.md ~/Library/Application\ Support/Claude/skills/
```

**Linux:**
```bash
cp SKILL.md ~/.config/Claude/skills/
```

**Windows:**
```powershell
copy SKILL.md %APPDATA%\Claude\skills\
```

## Step 4: Connect Hardware (30 seconds)

1. **Power on** your EP-133 K.O. II
2. **Connect** USB-C cable between device and computer
3. **Wait** 2-3 seconds for device to enumerate

**Verify connection (optional):**

**macOS/Linux:**
```bash
python -c "import mido; print(mido.get_output_names())"
```

**Windows:**
```powershell
python -c "import mido; print(mido.get_output_names())"
```

You should see your EP-133 listed.

## Step 5: Restart Claude Desktop (30 seconds)

1. **Quit** Claude Desktop completely
2. **Relaunch** Claude Desktop
3. **Wait** for it to load the new configuration

## Step 6: Test It! (30 seconds)

In Claude Desktop, type:

```
Connect to my EP-133
```

**Expected response:**
```
Scanning for MIDI devices...
Found: EP-133 K.O. II
Connected successfully!
Ready to make music.
```

Then try:

```
Play a kick drum
```

**You should hear a kick!** 🎵

## Troubleshooting

### "No MIDI ports found"

**Check:**
- Is the EP-133 powered on?
- Is the USB cable connected properly?
- Try a different USB port
- Try unplugging and reconnecting

**macOS specific:**
- Open "Audio MIDI Setup" (Applications > Utilities)
- Check if EP-133 appears in MIDI devices

**Linux specific:**
- Add yourself to audio group: `sudo usermod -a -G audio $USER`
- Log out and log back in
- Check: `aconnect -l`

**Windows specific:**
- Install MIDI drivers if needed
- Check Device Manager for MIDI devices

### "MCP server not found"

**Check:**
- Is the package installed? `pip list | grep ep-koii`
- Is the config file saved correctly?
- Did you restart Claude Desktop?

**Reinstall if needed:**
```bash
pip uninstall ep-koii-skills
pip install git+https://github.com/Organized-AI/ep-koii-skills.git
```

### "SKILL.md not loaded"

**Check:**
- Is the file in the correct directory?
- Is it named exactly `SKILL.md`?
- Did you restart Claude Desktop?

**Verify location:**

**macOS:**
```bash
ls ~/Library/Application\ Support/Claude/skills/
```

**Linux:**
```bash
ls ~/.config/Claude/skills/
```

**Windows:**
```powershell
dir %APPDATA%\Claude\skills\
```

### "Permission denied" errors

**Linux/macOS:**
```bash
# Give executable permissions if needed
chmod +x ~/.config/Claude/skills/SKILL.md
```

**Windows:**
- Run terminal as Administrator
- Check folder permissions

## What's Next?

Now that you're connected, try these commands:

### Explore Sounds
```
Show me all kick drums
List sounds in the Snares category
Find 808 sounds
```

### Create Patterns
```
Create a house beat at 128 BPM
Make a trap pattern
Play a boom bap drum loop
```

### Learn Techniques
```
What's the difference between house and techno patterns?
Teach me about velocity dynamics
Show me how to layer sounds
```

## Quick Reference

### Connection Commands
- `Connect to my EP-133`
- `Disconnect from EP-133`
- `Check if EP-133 is connected`

### Sound Commands
- `Play [sound name]`
- `Show me [category] sounds`
- `Find [keyword] sounds`
- `Play pad [A1-D12]`

### Pattern Commands
- `Create a [genre] beat`
- `Play a kick pattern`
- `Make a drum loop at [BPM] BPM`

## File Structure

After setup, you should have:

```
~/Library/Application Support/Claude/  (macOS)
├── claude_desktop_config.json  ← MCP server config
└── skills/
    └── SKILL.md                ← This skill

Site packages (from pip):
├── ep_koii_skills/
│   ├── mcp_server.py          ← MCP server
│   ├── skill.py               ← Core logic
│   ├── midi_interface.py      ← MIDI control
│   └── sample_manager.py      ← Sound library
```

## Performance Tips

1. **Keep USB cable connected** - Disconnections interrupt sessions
2. **Close other MIDI apps** - Prevent port conflicts
3. **Use standard velocities** - 64-100 for most sounds
4. **Be specific** - "Play Kick 808 Deep" vs "Play something"

## Getting Help

### In Claude Desktop
```
Help me troubleshoot my EP-133 connection
What sounds are available?
Teach me about drum pattern creation
```

### Online Resources
- **Repository**: https://github.com/Organized-AI/ep-koii-skills
- **Issues**: Report bugs on GitHub
- **Documentation**: See README.md and VISUAL_SHOWCASE.md

## Success Checklist

- [ ] Package installed successfully
- [ ] Claude Desktop config updated
- [ ] SKILL.md copied to skills directory
- [ ] EP-133 connected via USB
- [ ] Claude Desktop restarted
- [ ] Connection test successful
- [ ] First sound played successfully

**All checked? You're ready to make music!** 🎵🤖

## Estimated Time

- **Typical**: 5 minutes
- **With troubleshooting**: 10-15 minutes
- **First-time setup**: 10 minutes

## Next Steps

1. **Explore the sound library** - `Show me all categories`
2. **Try different genres** - `Teach me about techno patterns`
3. **Experiment with velocity** - `Play a kick at velocity 127`
4. **Create your first beat** - `Help me make a beat`

## Advanced: Verify Installation

Test the Python package directly:

```python
from ep_koii_skills import EP133Skill

skill = EP133Skill()
ports = skill.list_midi_ports()
print(f"Available MIDI ports: {ports}")

if skill.connect_to_device():
    print("Connected!")
    categories = skill.list_sound_categories()
    print(f"Categories: {categories}")
    skill.disconnect_device()
```

**Expected output:**
```
Available MIDI ports: ['EP-133 K.O. II', ...]
Connected!
Categories: ['Kicks', 'Snares', 'Cymbals and Hats', ...]
```

## Support

If you're stuck after following this guide:

1. **Check the logs** - Claude Desktop console output
2. **Verify permissions** - File and USB access
3. **Test the package** - Run the verification script above
4. **Report issues** - GitHub issues with error messages

**Happy music making!** 🎵
