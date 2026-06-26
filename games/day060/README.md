# Kakuro - Number Crossword Puzzle

A complete, standalone HTML5 Kakuro puzzle game playable directly in the browser.

## How to Play

1. **Open** `index.html` in any modern browser
2. **Select** a difficulty (Easy / Medium / Hard)
3. **Click** a blank cell, then tap a number 1-9 to fill it in
4. **Goal**: Fill every blank cell so that each run of cells sums to its clue number, with no repeated digits in any run

### Rules

- Clue cells have a diagonal line: **top-right** = sum of cells below, **bottom-left** = sum of cells to the right
- Each horizontal or vertical run of blank cells must add up to its clue
- **No digit may repeat** within a single run (but the same digit can appear in different runs)
- Only digits 1 through 9 are used

## Features

- **3 difficulty levels** with 8 hand-verified puzzles total
- **Notes mode** — pencil in candidate numbers (press N or tap the Notes button)
- **Check** — highlights incorrect entries in red
- **Hint** — reveals a random unsolved cell (costs 75 score points)
- **Undo / Reset** — fix mistakes or start over
- **Scoring** — base 1000 points minus penalties, plus a time bonus on completion
- **Keyboard support** — arrow keys to navigate, 1-9 to enter, Delete to erase
- **Mobile-friendly** — responsive grid and touch support
- **No dependencies** — single HTML file, works offline
