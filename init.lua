-- Additive pity on exploded red chests. Policy lives here, not in C.
-- Engine keeps vanilla 赤宝箱処理 (30%/skill %, explode on fail).
-- Fail (explode) adds this attempt's vanilla/skill % to the next red.
-- Any successful red open resets pity. Green chests are not touched.

rq.log("Chest Safe luck: explode still happens; next red gets +this attempt's %")

if not rq.chest.install() then
  error("chest-safe-luck: rq.chest.install failed (see mods/rqmod.log)")
end

rq.chest.on_attempt(function(info)
  local pity = rq.chest.get("pity") or 0
  local base = info.base_pct or 30
  local pct = base + pity
  if pct > 100 then
    pct = 100
  end
  if pct < 0 then
    pct = 0
  end
  rq.log(string.format(
    "red attempt id=%d (%d,%d) vanilla/skill %d%% pity=%d -> %d%%",
    info.id or 0, info.x or 0, info.y or 0, base, pity, pct))
  return pct
end)

rq.chest.on_result(function(info)
  local base = info.base_pct or 30
  if info.success then
    rq.chest.set("pity", 0)
    rq.log(string.format(
      "opened id=%d roll %d <= %d%% — pity reset",
      info.id or 0, info.rolled or 0, info.pct or 0))
  else
    local pity = (rq.chest.get("pity") or 0) + base
    if pity > 100 then
      pity = 100
    end
    rq.chest.set("pity", pity)
    rq.log(string.format(
      "exploded id=%d roll %d > %d%% — added %d, pity now %d (next red = its %% + %d)",
      info.id or 0, info.rolled or 0, info.pct or 0, base, pity, pity))
  end
end)
