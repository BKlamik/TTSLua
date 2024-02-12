---@meta AssetBundle

---The AssetBundle behavior is present on Objects that were created from a custom [AssetBundle](https://kb.tabletopsimulator.com/custom-content/custom-assetbundle/).
---@class AssetBundle
---@field getLoopingEffectIndex fun(): int Index of the currently looping effect. Indexes starts at 0.
---Returns a Table with the keys "index" and "name" for each looping effect.
---```
---    -- Example usage
---    effectTable = self.AssetBundle.getLoopingEffects()
---```
---```
---    -- Example returned table
---    {
---        {index=0, name="Effect Name 1"},
---        {index=1, name="Effect Name 2"},
---    }
---```
---***
---
---[Open Documentation](https://api.tabletopsimulator.com/behavior/assetbundle/#getloopingeffects)
---@field getLoopingEffets {index: int, name: int}[]
---Returns a Table with the keys "index" and "name" for each trigger effect.
---```
---    -- Example usage
---    effectTable = self.AssetBundle.getTriggerEffects()
---```
---```
---    -- Example returned table
---    {
---        {index=0, name="Effect Name 1"},
---        {index=1, name="Effect Name 2"},
---    }
---```
---
---***
---[Open Documentation](https://api.tabletopsimulator.com/behavior/assetbundle/#getTriggerEffects)
---@field getTriggerEffects {index: int, name: int}[] Returns a Table with the keys "index" and "name" for each trigger effect.
---@field playLoopingEffect fun(index: int): nil Starts playing a looping effect. Indexes starts at 0.
---@field playTriggerEffect fun(index: int): nil Starts playing a trigger effect. Indexes starts at 0.
