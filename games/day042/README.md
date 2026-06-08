# Day 42 – Jigsaw Puzzle 🧩

A polished drag-and-drop jigsaw puzzle game built with vanilla HTML5 Canvas and JavaScript.

## Features

- **3 difficulty levels** — Easy (3×3), Medium (4×4), Hard (5×6)
- **Procedurally-generated images** — colourful gradient art with geometric shapes; a new design every play
- **Desktop & mobile** — HTML5 Drag & Drop API for desktop, touch events for mobile
- **Score system** — earn points per correct placement (time bonus applies); hint costs 20 points
- **Timer** — tracks your completion time
- **Hint button** — briefly overlays the reference image onto the board
- **Reference image** — always visible so you know where pieces go
- **Snap & glow** — correctly placed pieces snap in with a green ring

## How to Play

1. Choose a difficulty and click **▶ Start Puzzle**
2. Drag pieces from the tray onto the matching slot on the board
3. Use **💡 Hint** if you're stuck (costs 20 points)
4. Complete all pieces as fast as possible for the best score
5. Hit **Play Again** to start fresh

## Tech

- Single `index.html` — no dependencies, no build step
- Canvas API for rendering
- `mulberry32` seeded RNG for deterministic-ish image generation
- Touch & drag event handling for cross-device play
