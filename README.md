# Music Production Skill for EP-133 K.O. II

> Control the Teenage Engineering EP-133 K.O. II synthesizer through natural language with Claude Desktop

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Python 3.8+](https://img.shields.io/badge/python-3.8+-blue.svg)](https://www.python.org/downloads/)
[![Claude Desktop](https://img.shields.io/badge/Claude-Desktop-orange.svg)](https://claude.ai/desktop)

## Overview

This Claude Desktop skill enables conversational control of the Teenage Engineering EP-133 K.O. II hardware synthesizer. Talk naturally to create beats, browse sounds, and produce music.

```
User: Connect to my EP-133 and create a house beat at 128 BPM
Assistant: [Automatically connects and generates classic house pattern]
```

## Features

- **Natural Language Control** - Talk to your hardware like a collaborator
- **240+ Sound Library** - Organized kicks, snares, cymbals, percussion, bass, synths
- **Genre Templates** - House, Trap, Techno, Boom Bap pattern suggestions
- **Real-time MIDI** - 48 pads, 128 velocity levels, precise timing
- **Sound Search** - Find exactly what you need instantly
- **Pattern Sequencing** - Create and play drum patterns with BPM control

## Quick Start

### 1. Install the Package

```bash
pip install git+https://github.com/Organized-AI/ep-koii-skills.git
```

### 2. Configure Claude Desktop

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

**Config locations:**
- **macOS**: `~/Library/Application Support/Claude/claude_desktop_config.json`
- **Windows**: `%APPDATA%\Claude\claude_desktop_config.json`
- **Linux**: `~/.config/Claude/claude_desktop_config.json`

### 3. Deploy the Skill

Copy `SKILL.md` to your Claude skills directory:

```bash
# macOS
cp SKILL.md ~/Library/Application\ Support/Claude/skills/

# Linux
cp SKILL.md ~/.config/Claude/skills/

# Windows
copy SKILL.md %APPDATA%\Claude\skills\
```

### 4. Connect Hardware

1. Power on your EP-133 K.O. II
2. Connect via USB-C cable
3. Open Claude Desktop
4. Say: "Connect to my EP-133"

**Done!** Start making music in <5 minutes.

## 🎛️ Advanced: Session Management Integration

For optimized music production sessions with automatic scheduling and token management, integrate with **cc-session-manager** skill.

### What You Get

The CC Session Manager enables:

- **📅 Smart Scheduling** - Automatically find 5-hour production blocks in your calendar
- **🪙 Token Management** - Track and optimize Claude Code token usage (20-30% savings)
- **💾 Context Preservation** - Resume projects exactly where you left off
- **📊 Analytics** - Understand your productivity patterns
- **⚡ Real-time Alerts** - Get notified about token usage and session time

### Quick Integration Setup

See [SKILL_INTEGRATION.md](./SKILL_INTEGRATION.md) for complete instructions on:
- Installing both skills
- Configuring MCP servers
- Using session management commands
- Token budgeting strategies

**Quick start:**
```bash
./setup_music_production_integration.sh
```

Then say: **"Schedule my first music production session"**

[Read the complete integration guide →](./docs/integrations/MUSIC_PRODUCTION_SESSION_INTEGRATION.md)

## Usage Examples

### Basic Control

```
"Connect to my EP-133"
"Play a kick drum"
"Show me all snare sounds"
"Find bass sounds"
```

### Sound Discovery

```
"What sounds are in the Kicks category?"
"Search for 808 sounds"
"List all melodic sounds"
"Play the deepest kick you have"
```

### Pattern Creation

```
"Create a house beat at 128 BPM"
"Make a trap pattern"
"Play a basic four-on-the-floor kick pattern"
"Add hi-hats on every 8th note"
```

### Production Techniques

```
"Suggest sounds for a techno track"
"What's a good boom bap drum pattern?"
"Help me layer sounds for a custom snare"
"Show me velocity dynamics for expressive playing"
```

## Sound Library

### Categories (240+ Sounds)

| Category | Count | Examples |
|----------|-------|----------|
| **Kicks** | 31 | 808 Deep, Acoustic, Hard, Techno, Sub |
| **Snares** | 45 | Acoustic, Tight, Clap, Rimshot, Side Stick |
| **Cymbals & Hats** | 53 | Closed Hat, Open Hat, Ride, Crash |
| **Percussion** | 13 | Shaker, Tambourine, Conga, Timbale |
| **Bass** | 31 | Sub 808, Reese Growl, Synth Deep |
| **Melodic & Synth** | 60 | Leads, Pads, Plucks, FX |

### Sound Organization

Sounds are mapped to 48 pads across 4 groups:

```
Group A (36-47):  Kicks & Low Percussion
Group B (48-59):  Snares & Mid Percussion
Group C (60-71):  Cymbals & Hi-Hats
Group D (72-83):  Bass & Melodic/Synth
```

## Technical Specifications

### MIDI Configuration

- **Note Range**: 36-83 (48 pads)
- **Velocity**: 0-127 (128 levels)
- **Duration**: 0.1-5.0 seconds (typical)
- **Channel**: 0-15 (default 0)
- **Latency**: <150ms end-to-end

### Velocity Guidelines

| Range | Level | Use Case |
|-------|-------|----------|
| 0-31 | Very Soft | Subtle textures, background |
| 32-63 | Soft | Ambient elements |
| 64-95 | Medium | Standard playing |
| 96-127 | Hard | Accents, emphasis |

### System Requirements

- **Hardware**: Teenage Engineering EP-133 K.O. II
- **Cable**: USB-C connection
- **OS**: macOS, Linux, or Windows
- **Python**: 3.8 or higher
- **Dependencies**: mido >= 1.2.10

## Architecture

```
User Input (Natural Language)
    ↓
Claude Desktop
    ↓
Music Production Skill (SKILL.md)
    ↓
MCP Server (ep-133-koii)
    ↓
EP-KOII Package (Python)
    ↓
MIDI Protocol
    ↓
EP-133 K.O. II Hardware
```

## Available Tools

The MCP server provides 9 tools:

### Connection Management
- `list_midi_ports` - Scan for MIDI devices
- `connect_to_device` - Connect by name or index
- `disconnect_device` - Safe disconnection
- `check_connection` - Verify status

### Sound Control
- `play_note` - Play by MIDI number (36-83)
- `play_pad` - Play by pad notation (A1-D12)

### Sound Library
- `list_sound_categories` - Get all categories
- `list_sounds_in_category` - Browse by category
- `search_sounds` - Search by keyword

## Example Workflows

### Workflow 1: First Beat

```
User: Help me make my first beat on the EP-133