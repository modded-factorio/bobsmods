if mods["aai-industry"] then
  if data.raw.technology["logistics-0"] then
    bobmods.lib.tech.hide("basic-logistics")
  end
end
if mods["aai-containers"] then
  bobmods.lib.tech.add_prerequisite("aai-strongbox-storage", "advanced-circuit")
  data.raw.item["passive-provider-chest"].order = "b[storage]-b"
  data.raw.item["active-provider-chest"].order = "b[storage]-c"
  data.raw.item["storage-chest"].order = "b[storage]-d"
  data.raw.item["buffer-chest"].order = "b[storage]-e"
  data.raw.item["requester-chest"].order = "b[storage]-f"
  data.raw["item-subgroup"]["bob-logistic-chests-1"].order = "a1[container-1]-a"
  data.raw["item-subgroup"]["bob-logistic-chests-2"].order = "a1[container-1]-b"
  data.raw["item-subgroup"]["bob-logistic-chests-3"].order = "a1[container-1]-c"
  if mods["bobplates"] then
    data.raw.item["bob-brass-chest"].subgroup = "bob-logistic-chests-2"
    data.raw.item["bob-titanium-chest"].subgroup = "bob-logistic-chests-3"
  end
  data.raw.item["bob-passive-provider-chest-2"].order = "b[storage]-b2"
  data.raw.item["bob-active-provider-chest-2"].order = "b[storage]-c2"
  data.raw.item["bob-storage-chest-2"].order = "b[storage]-d2"
  data.raw.item["bob-buffer-chest-2"].order = "b[storage]-e2"
  data.raw.item["bob-requester-chest-2"].order = "b[storage]-f2"
  data.raw.item["bob-passive-provider-chest-3"].order = "b[storage]-b3"
  data.raw.item["bob-active-provider-chest-3"].order = "b[storage]-c3"
  data.raw.item["bob-storage-chest-3"].order = "b[storage]-d3"
  data.raw.item["bob-buffer-chest-3"].order = "b[storage]-e3"
  data.raw.item["bob-requester-chest-3"].order = "b[storage]-f3"
end
if mods["aai-programmable-vehicles"] then
  data.raw["item-subgroup"]["ai-vehicles"].group = "bob-logistics"
  data.raw["item-subgroup"]["ai-vehicles-reverse"].group = "bob-logistics"
  data.raw["item-subgroup"]["ai-vehicles"].order = "h2"
  data.raw["item-subgroup"]["ai-vehicles-reverse"].order = "h3"
end
if mods["aai-programmable-structures"] then
  data.raw["item-subgroup"]["programmable-structures"].group = "bob-logistics"
  data.raw["item-subgroup"]["programmable-structures"].order = "h1"
end
if mods["aai-loaders"] then
  if data.raw.technology["aai-basic-loader"] then
    bobmods.lib.tech.add_prerequisite("aai-basic-loader", "steam-power")
  end
end
