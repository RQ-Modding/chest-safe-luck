# Testing Chest Safe Luck

For people and agents who test the mod in the game. Check `logs\rqmod.log` for
`Loading chest-safe-luck` first.

## What it adds

No buttons and no `rq.agent.control` ids. Do not invent controls for it.

## How to check it

1. In a dungeon, open red chests with a party that has no thief or Chest Opening, so the game's
   chance is 30%.
2. Each red attempt logs `red attempt id=... vanilla/skill 30% pity=N -> M%`. The chest's line on
   screen shows M% before the choice.
3. A fail logs `exploded ... added 30, pity now N`, and the next red chest's chance is 30 + N.
4. A success logs `opened ... pity reset`.

## Forcing it for a test

`rq.random.fix` forces the roll from a throwaway test mod; work on a copy of the save.
