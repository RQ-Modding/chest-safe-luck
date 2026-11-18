# Chest Safe Luck

A red chest that explodes makes the next red chest easier to open.

## Showcase

### Base Odd

<img width="1268" height="567" alt="image" src="https://github.com/user-attachments/assets/a2bd3a0a-c519-43ad-9c83-30eb807596be" />

### Increased Odd

<img width="1238" height="662" alt="image" src="https://github.com/user-attachments/assets/a4a1cafe-e88b-4335-b348-3f3b40ed9bf1" />

## What it changes

- A red chest still explodes on a failed open, as in the game.
- Each explosion adds that chest's chance to the next red chest. With the game's 30%, the next red
  chest is at 60%, then 90%, then 100%.
- A red chest that opens resets the bonus. Green chests are not touched.

The chance the game shows before you choose ("N% chance to disarm") is the chance with the bonus.

## Keys and settings

None.

## Saves

Nothing. The bonus is not in the save: it starts at 0 each time the game starts.

## Works with

Loot Preview. This mod sets the red chest's chance from the game's own chance, so with another mod
that also sets it, the one that loads last decides.

## Install

Needs [RQ MOD](https://github.com/RQ-Modding/RQ-Mod) with loader **0.2.0** or newer. Extract the
release zip into the game's `mods` folder, so that you have `mods/chest-safe-luck/mod.json`.

## License

MIT, see [LICENSE](LICENSE).
