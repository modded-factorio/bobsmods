if not bobmods then
  bobmods = {}
end
if not bobmods.electronics then
  bobmods.electronics = {}
end

require("prototypes.category")
require("prototypes.chemicals")
require("prototypes.resource")
require("prototypes.electronics")
require("prototypes.technology")

data.raw.item["wood"].stack_size = 200
