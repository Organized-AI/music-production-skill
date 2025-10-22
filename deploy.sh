#!/bin/bash
# Automated deployment script for music-production-skill
# Deploys to: https://github.com/Organized-AI/music-production-skill

set -e  # Exit on error

echo "========================================="
echo "Music Production Skill - Deployment"
echo "========================================="
echo ""

# Check if we're in the right directory
if [ ! -f "SKILL.md" ]; then
    echo "❌ Error: SKILL.md not found"
    echo "Please run this script from the music-production-skill directory"
    exit 1
fi

echo "✓ Found SKILL.md"

# Count files
FILE_COUNT=$(ls -1 | wc -l | tr -d ' ')
echo "✓ Found $FILE_COUNT files"

# Initialize git if needed
if [ ! -d ".git" ]; then
    echo ""
    echo "Initializing Git repository..."
    git init
    echo "✓ Git initialized"
else
    echo "✓ Git already initialized"
fi

# Add remote if needed
if ! git remote get-url origin >/dev/null 2>&1; then
    echo ""
    echo "Adding GitHub remote..."
    git remote add origin https://github.com/Organized-AI/music-production-skill.git
    echo "✓ Remote added"
else
    echo "✓ Remote already configured"
fi

# Verify remote
REMOTE_URL=$(git remote get-url origin)
echo "✓ Remote: $REMOTE_URL"

# Stage all files
echo ""
echo "Staging files..."
git add .
STAGED_COUNT=$(git diff --cached --numstat | wc -l | tr -d ' ')
echo "✓ Staged $STAGED_COUNT files"

# Show status
echo ""
echo "Git status:"
git status --short

# Create commit
echo ""
echo "Creating commit..."
git commit -m "Initial commit: Music Production Skill for EP-133 K.O. II

Natural language control for Teenage Engineering EP-133 K.O. II synthesizer through Claude Desktop.

Features:
• Conversational control - Talk naturally to control hardware
• 240+ sound library - 6 categories (Kicks, Snares, Cymbals/Hats, Percussion, Bass, Melodic/Synth)
• Genre templates - House, Trap, Techno, Boom Bap patterns
• Real-time MIDI - 48 pads, velocity 0-127, duration control
• Sound search and browse - Find exactly what you need
• Pattern sequencing - Create beats with BPM control
• MCP server integration - 9 tools for device control

Technical:
• MCP server: ep-133-koii (via ep-koii-skills package)
• MIDI note range: 36-83 (4 groups × 12 pads)
• Velocity dynamics: 128 levels with usage guidelines
• Platform support: macOS, Linux, Windows
• Setup time: <5 minutes
• Latency: <150ms end-to-end

Usage:
• Install: pip install git+https://github.com/Organized-AI/ep-koii-skills.git
• Configure: Add MCP server to claude_desktop_config.json
• Deploy: Copy SKILL.md to Claude skills directory
• Use: 'Connect to my EP-133', 'Create a house beat', 'Find bass sounds'

Documentation:
• SKILL.md - Main skill definition with YAML frontmatter
• README.md - Complete repository documentation
• START_HERE.md - 5-minute quick start guide
• VISUAL_SHOWCASE.md - ASCII art visualizations and examples
• examples/conversations.md - Real-world usage examples
• deploy.sh - Automated deployment script

Architecture:
User → Claude Desktop → Music Production Skill → MCP Server → EP-KOII Package → MIDI → EP-133 Hardware

Makes hardware music production conversational! 🎵🤖"

echo "✓ Commit created"

# Push to GitHub
echo ""
echo "Pushing to GitHub..."
if git push -u origin main 2>&1; then
    echo "✓ Push successful!"
else
    echo ""
    echo "⚠ Push failed. Trying with --force..."
    echo "This will overwrite remote history if it exists."
    read -p "Continue? (y/n) " -n 1 -r
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        git push -u origin main --force
        echo "✓ Force push successful!"
    else
        echo "❌ Deployment cancelled"
        exit 1
    fi
fi

# Verification
echo ""
echo "========================================="
echo "🎉 Deployment Complete!"
echo "========================================="
echo ""
echo "Repository: https://github.com/Organized-AI/music-production-skill"
echo ""
echo "Next steps:"
echo "1. Visit repository to verify files"
echo "2. Test installation in clean environment"
echo "3. Share with community!"
echo ""
echo "Makes hardware music production conversational! 🎵🤖"
