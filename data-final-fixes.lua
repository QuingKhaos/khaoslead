local khaoslib_entity = require("__khaoslib__.prototypes.entity")

if settings.startup["khaoslead-byproduct"].value then
  -- If furnaces are treated as furnaces, we need 2 outputs
  local furnaces = khaoslib_entity.find("furnace", function(entity)
    ---@cast entity data.FurnacePrototype
    return util.contains_value(entity.crafting_categories, "smelting") and entity.result_inventory_size < 2
  end)

  for _, furnace_name in pairs(furnaces) do
    khaoslib_entity:load("furnace", furnace_name)
      :set {result_inventory_size = 2}
      :commit()
  end
end
