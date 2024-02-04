if mods["space-exploration"] then
  --Pipes

  data.raw.item["copper-pipe-to-ground"].subgroup = "pipe"
  data.raw.item["stone-pipe-to-ground"].subgroup = "pipe"
  data.raw.item["steel-pipe-to-ground"].subgroup = "pipe"
  data.raw.item["plastic-pipe-to-ground"].subgroup = "pipe"
  data.raw.item["bob-valve"].subgroup = "pipe"
  data.raw.item["bob-overflow-valve"].subgroup = "pipe"
  data.raw.item["bob-topup-valve"].subgroup = "pipe"

  --Logistic chests
  
  data.raw.item["steel-chest"].order = "b[storage]-1-f[steel]"
  data.raw.item["aai-strongbox"].order = "b[storage]-2-g"
  data.raw.item["aai-storehouse"].order = "b[storage]-4-g"
  data.raw.item["aai-warehouse"].order = "b[storage]-6-g"

  data.raw.item["se-linked-container"].subgroup = "container-6"

  data.raw.item["logistic-chest-passive-provider"].order = "b[storage]-1-b[passive-provider]"
  data.raw.item["logistic-chest-active-provider"].order = "b[storage]-1-c[active-provider]"
  data.raw.item["logistic-chest-storage"].order = "b[storage]-1-d[storage]"
  data.raw.item["logistic-chest-buffer"].order = "b[storage]-1-e[buffer]"
  data.raw.item["logistic-chest-requester"].order = "b[storage]-1-f[requester]"

  data.raw.item["logistic-chest-passive-provider-2"].order = "b[storage]-1-h[passive-provider]"
  data.raw.item["logistic-chest-active-provider-2"].order = "b[storage]-1-i[active-provider]"
  data.raw.item["logistic-chest-storage-2"].order = "b[storage]-1-j[storage]"
  data.raw.item["logistic-chest-buffer-2"].order = "b[storage]-1-k[buffer]"
  data.raw.item["logistic-chest-requester-2"].order = "b[storage]-1-l[requester]"

  data.raw.item["logistic-chest-passive-provider-3"].order = "b[storage]-1-n[passive-provider]"
  data.raw.item["logistic-chest-active-provider-3"].order = "b[storage]-1-o[active-provider]"
  data.raw.item["logistic-chest-storage-3"].order = "b[storage]-1-p[storage]"
  data.raw.item["logistic-chest-buffer-3"].order = "b[storage]-1-q[buffer]"
  data.raw.item["logistic-chest-requester-3"].order = "b[storage]-1-r[requester]"

  data.raw["item-subgroup"]["logistic-chests-2"].order = "a1[container-1]-a"
  data.raw["item-subgroup"]["logistic-chests-3"].order = "a1[container-1]-b"

  --Pumps

  data.raw.item["bob-pump-2"].subgroup = "pipe"
  data.raw.item["bob-pump-3"].subgroup = "pipe"
  data.raw.item["bob-pump-4"].subgroup = "pipe"

  --Storage tanks

  data.raw.item["bob-storage-tank-all-corners"].subgroup = "pipe"
  data.raw.item["storage-tank-2"].subgroup = "pipe"
  data.raw.item["bob-storage-tank-all-corners-2"].subgroup = "pipe"
  data.raw.item["storage-tank-3"].subgroup = "pipe"
  data.raw.item["bob-storage-tank-all-corners-3"].subgroup = "pipe"
  data.raw.item["storage-tank-4"].subgroup = "pipe"
  data.raw.item["bob-storage-tank-all-corners-4"].subgroup = "pipe"

  --Transport belts
  
  data.raw["item-subgroup"]["transport-belt"].group = "bob-logistics"
  data.raw["item-subgroup"]["underground-belt"].group = "bob-logistics"
  data.raw["item-subgroup"].splitter.group = "bob-logistics"
  data.raw["item-subgroup"]["transport-belt"].order = "b-7"
  data.raw["item-subgroup"]["underground-belt"].order = "b-8"
  data.raw["item-subgroup"].splitter.order = "b-9"

end
