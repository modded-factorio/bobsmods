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
  "roboport-door-4"
}

bobmods.lib.module.add_productivity_limitations(roboport_parts)


if data.raw.recipe["flying-robot-frame-2"] then bobmods.lib.module.add_productivity_limitation("flying-robot-frame-2") end
if data.raw.recipe["flying-robot-frame-3"] then bobmods.lib.module.add_productivity_limitation("flying-robot-frame-3") end
if data.raw.recipe["flying-robot-frame-4"] then bobmods.lib.module.add_productivity_limitation("flying-robot-frame-4") end


if data.raw.recipe["robot-brain-logistic"] then bobmods.lib.module.add_productivity_limitation("robot-brain-logistic") end
if data.raw.recipe["robot-brain-logistic-2"] then bobmods.lib.module.add_productivity_limitation("robot-brain-logistic-2") end
if data.raw.recipe["robot-brain-logistic-3"] then bobmods.lib.module.add_productivity_limitation("robot-brain-logistic-3") end
if data.raw.recipe["robot-brain-logistic-4"] then bobmods.lib.module.add_productivity_limitation("robot-brain-logistic-4") end

if data.raw.recipe["robot-brain-construction"] then bobmods.lib.module.add_productivity_limitation("robot-brain-construction") end
if data.raw.recipe["robot-brain-construction-2"] then bobmods.lib.module.add_productivity_limitation("robot-brain-construction-2") end
if data.raw.recipe["robot-brain-construction-3"] then bobmods.lib.module.add_productivity_limitation("robot-brain-construction-3") end
if data.raw.recipe["robot-brain-construction-4"] then bobmods.lib.module.add_productivity_limitation("robot-brain-construction-4") end


if data.raw.recipe["robot-tool-logistic"] then bobmods.lib.module.add_productivity_limitation("robot-tool-logistic") end
if data.raw.recipe["robot-tool-logistic-2"] then bobmods.lib.module.add_productivity_limitation("robot-tool-logistic-2") end
if data.raw.recipe["robot-tool-logistic-3"] then bobmods.lib.module.add_productivity_limitation("robot-tool-logistic-3") end
if data.raw.recipe["robot-tool-logistic-4"] then bobmods.lib.module.add_productivity_limitation("robot-tool-logistic-4") end

if data.raw.recipe["robot-tool-construction"] then bobmods.lib.module.add_productivity_limitation("robot-tool-construction") end
if data.raw.recipe["robot-tool-construction-2"] then bobmods.lib.module.add_productivity_limitation("robot-tool-construction-2") end
if data.raw.recipe["robot-tool-construction-3"] then bobmods.lib.module.add_productivity_limitation("robot-tool-construction-3") end
if data.raw.recipe["robot-tool-construction-4"] then bobmods.lib.module.add_productivity_limitation("robot-tool-construction-4") end



