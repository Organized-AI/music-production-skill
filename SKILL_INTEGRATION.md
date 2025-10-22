# Skill Integration Guide: Music Production + CC Session Manager

This guide explains how to use both the **Music Production Skill (EP-133)** and **CC Session Manager** skill together for optimized Claude Code music production workflows.

## Overview

The two skills work together to create an intelligent music production environment:

```
Your Request
    ↓
CC Session Manager (Planning & Token Tracking)
    ↓
Music Production Skill (EP-133 Hardware Control)
    ↓
Your Music Creation
```

### What Each Skill Does

**Music Production Skill:**
- Controls EP-133 K.O. II hardware via MIDI
- Provides 240+ organized sounds
- Generates drum patterns for different genres
- Enables real-time sound playback and exploration

**CC Session Manager:**
- Analyzes your calendar to find optimal production time
- Predicts and tracks token usage
- Preserves context across multi-day projects
- Provides session analytics and recommendations

### Why Use Them Together?

**Without Integration:**
- Random music sessions consume unpredictable tokens
- No context preservation between sessions
- Risk running out of tokens mid-creative-flow
- Difficult to plan multi-day projects

**With Integration:**
- Scheduled sessions with predictable budgets (400K-500K tokens)
- Auto-pause/resume with full state restoration
- Real-time token tracking with alerts
- Automatic follow-up session suggestions
- 20-30% more efficient token usage

## Installation

### Step 1: Install the Music Production Skill

```bash
# Install the EP-133 Python package
pip install git+https://github.com/Organized-AI/ep-koii-skills.git
```

### Step 2: Configure the EP-133 MCP Server

Edit your `claude_desktop_config.json`:

**macOS:** `~/Library/Application Support/Claude/claude_desktop_config.json`
**Linux:** `~/.config/Claude/claude_desktop_config.json`
**Windows:** `%APPDATA%\Claude\claude_desktop_config.json`

Add this to your `mcpServers` section:

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

### Step 3: Deploy Skills

Copy skill files to your Claude skills directory:

**macOS:**
```bash
mkdir -p ~/Library/Application\ Support/Claude/skills/
cp SKILL.md ~/Library/Application\ Support/Claude/skills/ep133-music-production.md
cp docs/integrations/MUSIC_PRODUCTION_SESSION_INTEGRATION.md ~/Library/Application\ Support/Claude/skills/
```

**Linux:**
```bash
mkdir -p ~/.config/Claude/skills/
cp SKILL.md ~/.config/Claude/skills/ep133-music-production.md
cp docs/integrations/MUSIC_PRODUCTION_SESSION_INTEGRATION.md ~/.config/Claude/skills/
```

**Windows:**
```powershell
mkdir %APPDATA%\Claude\skills\
copy SKILL.md %APPDATA%\Claude\skills\ep133-music-production.md
copy docs/integrations/MUSIC_PRODUCTION_SESSION_INTEGRATION.md %APPDATA%\Claude\skills\
```

### Step 4: Set Up CC Session Manager

The CC Session Manager skill should already be available in your Claude environment. If not:

```bash
# Contact Anthropic support for access to cc-session-manager
# Or copy from: /mnt/skills/user/cc-session-manager/SKILL.md
```

### Step 5: Restart Claude Desktop

1. **Quit** Claude Desktop completely
2. **Relaunch** Claude Desktop
3. Wait for initialization

## Accessing Both Skills

Once installed, you can access the skills in these ways:

### Direct Commands (Music Production Only)

```
"Connect to my EP-133"
"Play a kick drum"
"Create a house beat at 128 BPM"
"Show me all snare sounds"
```

### Scheduled Session Commands (Both Skills)

```
"Schedule my first music production session"
"Plan a 5-hour production block this week"
"Schedule a quick sketch session"
```

### Session Management Commands

```
"Start my music production session"
"Check my token budget"
"Show me my session analytics"
"Save my progress and schedule follow-up"
```

## Workflow Examples

### Workflow 1: Schedule a Session

**You say:**
```
"I want to produce music this week. Schedule a 5-hour Claude Code session for me."
```

**CC Session Manager responds:**
```
🎹 Analyzing your calendar...

Available 5-hour blocks found:
📅 Tuesday 2:00 PM - 7:00 PM
   Estimated tokens: 450K

📅 Friday 10:00 AM - 3:00 PM
   Estimated tokens: 450K

Which would you prefer?
```

**You choose:**
```
"Let's do Tuesday 2-7pm"
```

**Integration confirms:**
```
✅ Session scheduled for Tuesday 2:00 PM - 7:00 PM
🪙 Token budget: 450,000
🎛️ EP-133 will be ready to connect
📝 See docs/integrations/MUSIC_PRODUCTION_SESSION_INTEGRATION.md for the full production plan
```

### Workflow 2: Start Your Session

**Session time arrives. You say:**
```
"Start my music production session"
```

**Claude responds:**
```
🎹 Music Production Session ACTIVE

Session Details:
⏰ Tuesday 2:00 PM - 7:00 PM (5 hours)
🪙 Token Budget: 450,000 available
🎯 Hardware: Connecting to EP-133...

✅ EP-133 K.O. II Connected!
📚 Sound Library: 240+ sounds loaded

What genre are we producing today?
- House (128-130 BPM)
- Techno (125-135 BPM)
- Trap (140-160 BPM)
- Boom Bap (90-100 BPM)
```

### Workflow 3: Mid-Session Token Tracking

**After working for a while, Claude provides automatic updates:**

```
⚠️ Session Status Update (after 2 hours)

⏱️  Time Elapsed: 2h 00min | Remaining: 3h 00min
🪙 Token Usage: 180K used (40%) | 270K remaining

✅ Great pace! You're on track to:
   - Complete full production session
   - Have 50K token buffer remaining

Current Achievements:
✓ Kick pattern created
✓ Hi-hats and snare added
✓ Bass pattern laid down

Next Phase: Add melodic elements
Tokens needed: ~100K
```

### Workflow 4: Save and Continue Later

**Session interrupted at hour 4:**

```
You: "I need to take a break"

Claude: "💾 Saving session context..."

✅ Context saved:
- Project: House Track at 128 BPM
- Completed: Drums & Bass
- In Progress: Adding synth lead
- Hardware: EP-133 state preserved
- Tokens remaining: 140K

Would you like to schedule a follow-up session?
Suggested: Thursday 1-4pm (3 hours)
```

**Later, you say:**
```
"Continue my music production session"
```

**Claude restores:**
```
🎹 Resuming: House Track Production

Welcome back! You have 3 hours scheduled (until 7pm)
Token Budget: 270,000 remaining

Last thing we did:
- Testing synth pad on Deep Pad (MIDI 75)
- Chord progression: Cm - Ab - Eb - Bb

Ready to continue? Should we lock in that progression?
```

## Token Budget Reference

### Session Types

| Type | Duration | Tokens | Use Case |
|------|----------|--------|----------|
| **Quick Sketch** | 1 hour | 50-100K | Capture ideas quickly |
| **Sound Design** | 2-3 hours | 150-250K | Explore and catalog sounds |
| **Pattern Session** | 3-4 hours | 250-400K | Build drum patterns |
| **Deep Production** | 5 hours | 400-500K | Complete track foundation |
| **Full EP** | 10 hours (2 sessions) | 800-900K | 2 complete tracks |

### Token Usage by Activity

| Activity | Tokens | Notes |
|----------|--------|-------|
| Sound library search | 30-50K | Per 20 sounds reviewed |
| Pattern creation | 40-80K | Per 8-bar pattern |
| Arrangement planning | 50-100K | Full song structure |
| Velocity/timing tweaks | 20-40K | Humanization |
| Export/documentation | 10-20K | Session wrap-up |

## Managing Both Skills

### Skill Priority

The skills work in sequence:

1. **CC Session Manager** checks your calendar and token budget
2. **Music Production Skill** handles all EP-133 hardware control
3. **CC Session Manager** tracks tokens in real-time during production
4. **CC Session Manager** suggests follow-up sessions

### When to Use Which

**Use Music Production Skill for:**
- Exploring sounds
- Playing quick test patterns
- Learning the EP-133
- One-off musical ideas

**Use CC Session Manager for:**
- Multi-day projects
- Token budget planning
- Calendar integration
- Session tracking & analytics

**Use Both Together for:**
- Optimized production workflows
- Sustainable music creation
- Professional-level token efficiency

## Troubleshooting Integration

### Issue: CC Session Manager Not Recognizing Music Context

**Solution:**
1. Verify both skills are in the skills directory
2. Check skill file names match exactly
3. Restart Claude Desktop
4. Say: "Show me available skills"

### Issue: EP-133 Disconnects During Session

**Solution:**
1. Session context is preserved by CC Session Manager
2. Reconnect hardware: "Reconnect to EP-133"
3. Session resumes with full state
4. No token loss for the reconnection

### Issue: Token Alerts Not Appearing

**Solution:**
1. Verify cc-session-manager skill is active
2. Check that session was scheduled (not ad-hoc)
3. Token tracking requires scheduled sessions
4. Contact support if alerts still missing

### Issue: Can't Schedule Sessions

**Solution:**
1. Export your calendar as `.ics` file
2. Place in accessible location
3. Tell Claude where to find it: "My calendar is at ~/calendar.ics"
4. Try scheduling again

## Best Practices

### Pre-Session Preparation
- Schedule sessions at least 1 day in advance
- Export your calendar for optimal time finding
- Define project goals before session starts
- Review previous session notes if continuing

### During Session
- Monitor token updates every hour
- Save patterns frequently
- Use the provided time estimates
- Note creative decisions for next session

### Post-Session
- Let CC Session Manager auto-save context
- Review the session analytics
- Note what worked well
- Plan next session based on progress

### Token Optimization
```
❌ Inefficient Approaches:
- "Show me every sound in the library" (wasteful searching)
- "Try 50 different variations" (excessive exploration)
- Random unscheduled sessions (unpredictable tokens)

✅ Efficient Approaches:
- "Find 808 kicks" (specific searching)
- "Create 3 pattern variations" (focused iteration)
- Scheduled sessions with clear goals (predictable use)
```

## Advanced: Customize Session Templates

You can ask CC Session Manager to create custom session templates:

```
"Create a sound design session template:
- Duration: 2 hours
- Token budget: 200K
- Focus: Exploring snare sounds
- Best time: Morning (fresh ears)"
```

```
"I'm collaborating with someone Thursday.
Schedule a 2-hour demo session with lower token usage"
```

## Integration Checklist

- [ ] ep-koii-skills Python package installed
- [ ] EP-133 MCP server configured in claude_desktop_config.json
- [ ] Music Production skill (SKILL.md) in skills directory
- [ ] CC Session Manager skill available
- [ ] Integration guide (MUSIC_PRODUCTION_SESSION_INTEGRATION.md) accessible
- [ ] Claude Desktop restarted
- [ ] EP-133 hardware connected and powered on
- [ ] Calendar exported (optional but recommended)

## Next Steps

1. **Schedule your first session:**
   ```
   "Schedule my first music production session"
   ```

2. **Read the integration guide:**
   - See [docs/integrations/MUSIC_PRODUCTION_SESSION_INTEGRATION.md](./docs/integrations/MUSIC_PRODUCTION_SESSION_INTEGRATION.md)
   - Learn token budgeting strategies
   - See real-world session examples

3. **Explore the sound library:**
   ```
   "What sounds are available for house music?"
   ```

4. **Create your first production session:**
   ```
   "Start my scheduled music production session"
   ```

## Support & Resources

- **Repository**: https://github.com/Organized-AI/music-production-skill
- **Integration Guide**: [docs/integrations/MUSIC_PRODUCTION_SESSION_INTEGRATION.md](./docs/integrations/MUSIC_PRODUCTION_SESSION_INTEGRATION.md)
- **Example Session**: [docs/integrations/EXAMPLE_SESSION.md](./docs/integrations/EXAMPLE_SESSION.md)
- **Issues**: Report on GitHub

## Summary

The combination of **Music Production Skill + CC Session Manager** gives you:

✅ **Predictable** - Know token usage before you start
✅ **Sustainable** - 20-30% token savings through optimization
✅ **Focused** - Clear goals for each session
✅ **Trackable** - Analytics on your productivity
✅ **Resumable** - Pick up exactly where you left off
✅ **Professional** - Production-ready workflow

**Ready to make music?** Say: *"Schedule my first music production session"*

---

*Music production meets intelligent planning!* 🎵🤖
