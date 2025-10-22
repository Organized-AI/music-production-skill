#!/bin/bash
# CC Session Manager + Music Production Integration Setup
# For use with EP-133 K.O. II Skill

set -e

echo "🎹 Setting up Music Production Session Management..."
echo ""

# Color codes for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Detect OS and set paths
if [[ "$OSTYPE" == "darwin"* ]]; then
    CLAUDE_CONFIG="$HOME/Library/Application Support/Claude"
    SKILLS_DIR="$CLAUDE_CONFIG/skills"
    CONFIG_FILE="$CLAUDE_CONFIG/claude_desktop_config.json"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    CLAUDE_CONFIG="$HOME/.config/Claude"
    SKILLS_DIR="$CLAUDE_CONFIG/skills"
    CONFIG_FILE="$CLAUDE_CONFIG/claude_desktop_config.json"
else
    echo "❌ Unsupported OS. This script supports macOS and Linux only."
    exit 1
fi

echo -e "${BLUE}Detected OS:${NC} $OSTYPE"
echo -e "${BLUE}Skills directory:${NC} $SKILLS_DIR"
echo ""

# Step 1: Create skills directory if it doesn't exist
echo -e "${YELLOW}Step 1:${NC} Checking skills directory..."
if [ ! -d "$SKILLS_DIR" ]; then
    mkdir -p "$SKILLS_DIR"
    echo -e "${GREEN}✓${NC} Created skills directory"
else
    echo -e "${GREEN}✓${NC} Skills directory exists"
fi
echo ""

# Step 2: Copy cc-session-manager skill
echo -e "${YELLOW}Step 2:${NC} Installing cc-session-manager skill..."
if [ -f "/mnt/skills/user/cc-session-manager/SKILL.md" ]; then
    cp "/mnt/skills/user/cc-session-manager/SKILL.md" "$SKILLS_DIR/cc-session-manager.md"
    echo -e "${GREEN}✓${NC} CC Session Manager skill installed"
else
    echo -e "${YELLOW}⚠${NC}  CC Session Manager not found at expected location"
    echo "   Please ensure the skill is available in your Claude environment"
fi
echo ""

# Step 3: Copy music production skill
echo -e "${YELLOW}Step 3:${NC} Installing music production skill..."
if [ -f "SKILL.md" ]; then
    cp "SKILL.md" "$SKILLS_DIR/ep133-music-production.md"
    echo -e "${GREEN}✓${NC} EP-133 Music Production skill installed"
else
    echo -e "${YELLOW}⚠${NC}  SKILL.md not found in current directory"
    echo "   Run this script from the music-production-skill repository root"
fi
echo ""

# Step 4: Install Python package for EP-133
echo -e "${YELLOW}Step 4:${NC} Installing EP-133 Python package..."
if command -v pip &> /dev/null; then
    pip install git+https://github.com/Organized-AI/ep-koii-skills.git --quiet
    echo -e "${GREEN}✓${NC} EP-133 package installed"
else
    echo -e "${YELLOW}⚠${NC}  pip not found. Please install Python and pip first"
fi
echo ""

# Step 5: Configure MCP server
echo -e "${YELLOW}Step 5:${NC} Configuring MCP server..."
if [ -f "$CONFIG_FILE" ]; then
    # Backup existing config
    cp "$CONFIG_FILE" "$CONFIG_FILE.backup"
    echo -e "${GREEN}✓${NC} Backed up existing config"
    
    # Check if ep-133-koii already exists in config
    if grep -q "ep-133-koii" "$CONFIG_FILE"; then
        echo -e "${GREEN}✓${NC} EP-133 MCP server already configured"
    else
        # Add EP-133 MCP server configuration
        # This is a simplified approach - adjust JSON structure as needed
        echo -e "${YELLOW}⚠${NC}  Please manually add the following to your $CONFIG_FILE:"
        echo ""
        echo '{
  "mcpServers": {
    "ep-133-koii": {
      "command": "python",
      "args": ["-m", "ep_koii_skills.mcp_server"],
      "env": {}
    }
  }
}'
        echo ""
    fi
else
    echo -e "${YELLOW}⚠${NC}  Claude config file not found"
    echo "   Expected location: $CONFIG_FILE"
    echo "   Please create it manually with the MCP server configuration"
fi
echo ""

# Step 6: Copy integration documentation
echo -e "${YELLOW}Step 6:${NC} Installing integration documentation..."
if [ -f "MUSIC_PRODUCTION_SESSION_INTEGRATION.md" ]; then
    cp "MUSIC_PRODUCTION_SESSION_INTEGRATION.md" "$SKILLS_DIR/"
    echo -e "${GREEN}✓${NC} Integration guide installed"
else
    echo -e "${YELLOW}⚠${NC}  Integration documentation not found"
    echo "   You can manually copy it from the repository"
fi
echo ""

# Step 7: Verify EP-133 connection
echo -e "${YELLOW}Step 7:${NC} Checking EP-133 hardware connection..."
if command -v python &> /dev/null; then
    python -c "
import mido
ports = mido.get_output_names()
ep133_found = any('EP-133' in port or 'K.O' in port for port in ports)
if ep133_found:
    print('${GREEN}✓${NC} EP-133 K.O. II detected')
else:
    print('${YELLOW}⚠${NC}  EP-133 not detected. Please:')
    print('   1. Power on your EP-133 K.O. II')
    print('   2. Connect via USB-C cable')
    print('   3. Run this script again')
" 2>/dev/null || echo -e "${YELLOW}⚠${NC}  Could not check MIDI devices (mido not installed)"
fi
echo ""

# Step 8: Final instructions
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}🎉 Setup Complete!${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "${BLUE}Next Steps:${NC}"
echo ""
echo "1. Restart Claude Desktop to load the new skills"
echo ""
echo "2. Connect your EP-133 K.O. II:"
echo "   • Power on the device"
echo "   • Connect via USB-C cable"
echo ""
echo "3. Start your first integrated session:"
echo '   Say: "Schedule my first music production session"'
echo ""
echo "4. Read the integration guide:"
echo "   Location: $SKILLS_DIR/MUSIC_PRODUCTION_SESSION_INTEGRATION.md"
echo ""
echo -e "${BLUE}Quick Test:${NC}"
echo '   Say: "Connect to my EP-133"'
echo ""
echo -e "${YELLOW}Note:${NC} If you encounter issues, check:"
echo "   • Claude Desktop is restarted"
echo "   • Skills are in: $SKILLS_DIR"
echo "   • MCP server is configured in: $CONFIG_FILE"
echo "   • EP-133 is connected and powered on"
echo ""
echo "🎵 Happy producing!"
echo ""
