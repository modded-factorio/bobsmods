if mods["quality"] then
  data.raw["equipment-grid"]["large-equipment-grid"].width = 8
  data.raw["equipment-grid"]["large-equipment-grid"].height = 9
  data:extend({
    {
      type = "equipment-grid",
      name = "power-armor-equipment-grid-mk3",
      width = 9,
      height = 10,
      equipment_categories = { "armor" },
    },
    {
      type = "equipment-grid",
      name = "power-armor-equipment-grid-mk4",
      width = 10,
      height = 11,
      equipment_categories = { "armor" },
    },
    {
      type = "equipment-grid",
      name = "power-armor-equipment-grid-mk5",
      width = 11,
      height = 12,
      equipment_categories = { "armor" },
    },
  })
else
  data:extend({
    {
      type = "equipment-grid",
      name = "power-armor-equipment-grid-mk3",
      width = 10,
      height = 12,
      equipment_categories = { "armor" },
    },
    {
      type = "equipment-grid",
      name = "power-armor-equipment-grid-mk4",
      width = 11,
      height = 13,
      equipment_categories = { "armor" },
    },
    {
      type = "equipment-grid",
      name = "power-armor-equipment-grid-mk5",
      width = 12,
      height = 14,
      equipment_categories = { "armor" },
    },
  })
end
