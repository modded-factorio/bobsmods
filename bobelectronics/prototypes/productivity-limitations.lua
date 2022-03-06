local chemicals = {
  "ferric-chloride-solution",
  "coal-cracking",
  "bob-oil-processing"
}


local electronics = {
  "insulated-cable",
  "basic-electronic-components",
  "electronic-components",
  "intergrated-electronics",
  "processing-electronics",
  "wooden-board",
  "phenolic-board",
  "fibreglass-board",
  "basic-circuit-board",
  "circuit-board",
  "superior-circuit-board",
  "multi-layer-circuit-board",
  "advanced-processing-unit"
}

if data.raw.recipe["solder"] then
  table.insert(electronics, "solder")
end
if data.raw.recipe["tinned-copper-cable"] then
  table.insert(electronics, "tinned-copper-cable")
end
if data.raw.recipe["gilded-copper-cable"] then
  table.insert(electronics, "gilded-copper-cable")
end


local resource = {
  "bob-resin-wood",
  "bob-resin-oil",
  "bob-rubber",
}

if data.raw.recipe["silicon-wafer"] then
  table.insert(electronics, "silicon-wafer")
end
if data.raw.recipe["solder"] then
  table.insert(electronics, "solder-alloy")
end
if data.raw.recipe["solder"] then
  table.insert(electronics, "solder-alloy-lead")
end


bobmods.lib.module.add_productivity_limitations(chemicals)
bobmods.lib.module.add_productivity_limitations(electronics)
bobmods.lib.module.add_productivity_limitations(resource)


