# 100 Days of AI-Generated Web Games

An automated challenge where a new HTML5 web game is generated every day using AI.

## How It Works

A macOS LaunchAgent runs daily at 10:00 AM, triggering a script that:

1. Picks the next game idea from a curated list of 100 ideas
2. Uses [OpenCode](https://opencode.ai) (AI coding agent) to generate a complete, standalone HTML5 game
3. Commits and pushes the game to this repository automatically

Each game is a single `index.html` file — no dependencies, no build step. Open it in any browser and play.

## Play the Games

Games are organized by day in the `games/` directory:

| Day | Game |
|-----|------|
| Coming soon... | First game generates on next scheduled run |

Once GitHub Pages is enabled, games will be playable at:
```
https://<username>.github.io/100_web_online_games/games/day001/
```

## Project Structure

```
games/
  day001/index.html
  day002/index.html
  ...
scripts/
  generate_game.sh    # Daily generation script
  game_ideas.txt      # 100 game ideas (one per line)
  generate.log        # Generation log
```

## Progress

**Games generated:** 0 / 100

## Tech Stack

- **Generator:** OpenCode AI coding agent
- **Games:** Vanilla HTML5 + CSS + JavaScript (no frameworks)
- **Automation:** macOS LaunchAgent (daily cron)
- **Hosting:** GitHub Pages
