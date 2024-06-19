local roboport_parts = {
  "roboport-antenna-1",
  "roboport-antenna-2",
  "roboport-antenna-3",
  "roboport-antenna-4",
  "roboport-chargepad-1",
  "roboport-chargepad-2",
  "roboport-chargepad-3",
  "roboport-chargepad-4",
  "roboport-door-1",
  "roboport-door-2",
  "roboport-door-3",
  "roboport-door-4",
}

bobmods.lib.module.add_productivity_limitations(roboport_parts)

if data.raw.recipe["flying-robot-frame-2"] then
  bobmods.lib.module.add_productivity_limitation("flying-robot-frame-2")
end
if data.raw.recipe["flying-robot-frame-3"] then
  bobmods.lib.module.add_productivity_limitation("flying-robot-frame-3")
end
if data.raw.recipe["flying-robot-frame-4"] then
  bobmods.lib.module.add_productivity_limitation("flying-robot-frame-4")
end

if data.raw.recipe["bob-robot-brain"] then
  bobmods.lib.module.add_productivity_limitation("bob-robot-brain")
end
if data.raw.recipe["bob-robot-brain-2"] then
  bobmods.lib.module.add_productivity_limitation("bob-robot-brain-2")
end
if data.raw.recipe["bob-robot-brain-3"] then
  bobmods.lib.module.add_productivity_limitation("bob-robot-brain-3")
end
if data.raw.recipe["bob-robot-brain-4"] then
  bobmods.lib.module.add_productivity_limitation("bob-robot-brain-4")
end

if data.raw.recipe["bob-robot-tool"] then
  bobmods.lib.module.add_productivity_limitation("bob-robot-tool")
end
if data.raw.recipe["bob-robot-tool-2"] then
  bobmods.lib.module.add_productivity_limitation("bob-robot-toolbob--2")
end
if data.raw.recipe["bob-robot-tool-3"] then
  bobmods.lib.module.add_productivity_limitation("bob-robot-tool-3")
end
if data.raw.recipe["bob-robot-tool-4"] then
  bobmods.lib.module.add_productivity_limitation("bob-robot-tool-4")
end

bobmods.lib.module.add_productivity_limitation("bob-oil-processing")
