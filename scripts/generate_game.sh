#!/bin/bash
set -e

PROJECT_DIR=~/Documents/100_web_online_games
SCRIPTS_DIR="$PROJECT_DIR/scripts"
GAMES_DIR="$PROJECT_DIR/games"
IDEAS_FILE="$SCRIPTS_DIR/game_ideas.txt"
LOG_FILE="$SCRIPTS_DIR/generate.log"

# Find next game number
mkdir -p "$GAMES_DIR"
LAST_NUM=$(ls "$GAMES_DIR" 2>/dev/null | grep -E '^day[0-9]+$' | sed 's/day//' | sort -n | tail -1)
NEXT_NUM=$(( ${LAST_NUM:-0} + 1 ))
GAME_DIR_NAME=$(printf "day%03d" $NEXT_NUM)
GAME_DIR="$GAMES_DIR/$GAME_DIR_NAME"

# Pick game idea (rotate through list)
TOTAL_IDEAS=$(wc -l < "$IDEAS_FILE" | tr -d ' ')
IDEA_LINE=$(( (NEXT_NUM - 1) % TOTAL_IDEAS + 1 ))
GAME_IDEA=$(sed -n "${IDEA_LINE}p" "$IDEAS_FILE")

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Starting generation of $GAME_DIR_NAME: $GAME_IDEA" >> "$LOG_FILE"

# Create game directory
mkdir -p "$GAME_DIR"

# Use opencode to generate the game
cd "$GAME_DIR"
git init . 2>/dev/null || true  # opencode needs a git repo

PROMPT="Create a complete, standalone HTML5 game: '$GAME_IDEA'

Requirements:
- Single HTML file named index.html
- All CSS and JavaScript embedded in the HTML file (no external dependencies)
- Beautiful, modern UI with good color scheme
- Mobile-friendly (touch support if applicable)
- Complete and playable - not a skeleton or demo
- Include a score system if applicable
- Add a title screen or start button
- Show game instructions to the player
- Handle game over / win conditions properly
- Make it fun and polished

The game should be ready to open directly in a browser with no setup needed.
Only create index.html and optionally a README.md describing the game."

/opt/homebrew/bin/opencode run "$PROMPT"

# After opencode finishes, commit and push from the project root
cd "$PROJECT_DIR"

# Remove the temp git init if opencode created one
rm -rf "$GAME_DIR/.git" 2>/dev/null || true

git add "games/$GAME_DIR_NAME/"
git commit -m "Day $NEXT_NUM: $GAME_IDEA"
git push origin main

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Successfully pushed $GAME_DIR_NAME" >> "$LOG_FILE"
