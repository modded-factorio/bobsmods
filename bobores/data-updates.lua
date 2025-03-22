for i, ore in pairs(bobmods.ores) do
  if ore.enabled then
    bobmods.lib.resource.generate_updates_stage(ore)
  end
end

if not bobmods.ores.gems.enabled then
  -- Do nothing
elseif bobmods.ores.settings.UnsortedGemOre == true then
  bobmods.lib.resource.add_result("bob-gem-ore", { type = "item", name = "bob-gem-ore", amount = 1 })
else
  bobmods.lib.resource.add_result(
    "bob-gem-ore",
    { type = "item", name = "bob-diamond-ore", amount = 1, probability = bobmods.gems.DiamondRatio }
  )
  bobmods.lib.resource.add_result(
    "bob-gem-ore",
    { type = "item", name = "bob-emerald-ore", amount = 1, probability = bobmods.gems.EmeraldRatio }
  )
  bobmods.lib.resource.add_result(
    "bob-gem-ore",
    { type = "item", name = "bob-amethyst-ore", amount = 1, probability = bobmods.gems.AmethystRatio }
  )
  bobmods.lib.resource.add_result(
    "bob-gem-ore",
    { type = "item", name = "bob-ruby-ore", amount = 1, probability = bobmods.gems.RubyRatio }
  )
  bobmods.lib.resource.add_result(
    "bob-gem-ore",
    { type = "item", name = "bob-sapphire-ore", amount = 1, probability = bobmods.gems.SapphireRatio }
  )
  bobmods.lib.resource.add_result(
    "bob-gem-ore",
    { type = "item", name = "bob-topaz-ore", amount = 1, probability = bobmods.gems.TopazRatio }
  )
end

if bobmods.ores.settings.GemsFromOtherOres == true then
  bobmods.lib.resource.add_result("coal", {
    type = "item",
    name = "bob-diamond-ore",
    amount = 1,
    probability = bobmods.ores.settings.GemProbability * bobmods.gems.DiamondRatio,
  })
  data.raw.resource["coal"].subgroup = "bob-ores"

  bobmods.lib.resource.add_result("bob-quartz", {
    type = "item",
    name = "bob-emerald-ore",
    amount = 1,
    probability = bobmods.ores.settings.GemProbability * bobmods.gems.EmeraldRatio,
  })
  bobmods.lib.resource.add_result("bob-quartz", {
    type = "item",
    name = "bob-amethyst-ore",
    amount = 1,
    probability = bobmods.ores.settings.GemProbability * bobmods.gems.AmethystRatio,
  })

  bobmods.lib.resource.add_result("bob-bauxite-ore", {
    type = "item",
    name = "bob-ruby-ore",
    amount = 1,
    probability = bobmods.ores.settings.GemProbability * bobmods.gems.RubyRatio,
  })
  bobmods.lib.resource.add_result("bob-bauxite-ore", {
    type = "item",
    name = "bob-sapphire-ore",
    amount = 1,
    probability = bobmods.ores.settings.GemProbability * bobmods.gems.SapphireRatio,
  })
  bobmods.lib.resource.add_result("bob-bauxite-ore", {
    type = "item",
    name = "bob-topaz-ore",
    amount = 1,
    probability = bobmods.ores.settings.GemProbability * bobmods.gems.TopazRatio,
  })
end

if bobmods.ores.settings.LeadGivesNickel == true then
  bobmods.lib.resource.add_result(
    "bob-lead-ore",
    { type = "item", name = "bob-nickel-ore", amount = 1, probability = bobmods.ores.settings.LeadNickelRatio }
  )
end

if bobmods.ores.settings.NickelGivesCobalt == true then
  if bobmods.ores.nickel.enabled then
    bobmods.lib.resource.add_result(
      "bob-nickel-ore",
      { type = "item", name = "bob-cobalt-ore", amount = 1, probability = bobmods.ores.settings.NickelCobaltRatio }
    )
  else
    if bobmods.ores.settings.LeadGivesNickel == true then
      bobmods.lib.resource.add_result("bob-lead-ore", {
        type = "item",
        name = "bob-cobalt-ore",
        amount = 1,
        probability = bobmods.ores.settings.LeadNickelRatio * bobmods.ores.settings.NickelCobaltRatio,
      })
    end
  end
  bobmods.ores.cobalt.enabled = true
end

if not bobmods.ores.cobalt.enabled then
  bobmods.lib.item.hide("bob-cobalt-ore")
  bobmods.lib.item.hide_entity("resource", "bob-cobalt-ore")
end

-- Water mining category, add to pumpjacks
if not data.raw["mining-drill"]["bob-water-miner-1"] then
  bobmods.lib.machine.type_if_add_resource_category("mining-drill", "basic-fluid", "water")
end

if settings.startup["bobmods-ores-infiniteore"].value == true then
  for index, resource in pairs(data.raw.resource) do
    if not resource.infinite then
      resource.infinite = true
    end
    if not resource.minimum then
      resource.minimum = 35
    end
    if not resource.normal then
      resource.normal = 350
    end
    if not resource.infinite_depletion_amount then
      resource.infinite_depletion_amount = 1
    end
    if not resource.resource_patch_search_radius then
      resource.resource_patch_search_radius = 12
    end
  end
end

--Intermediate reorganization
data.raw.item["coal"].subgroup = "bob-ores"
data.raw.item["stone"].subgroup = "bob-ores"
data.raw.item["iron-ore"].subgroup = "bob-ores"
data.raw.item["copper-ore"].subgroup = "bob-ores"
data.raw.item["uranium-ore"].subgroup = "bob-ores"
