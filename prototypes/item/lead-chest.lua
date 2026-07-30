local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

if settings.startup["khaoslead-more"].value then
  khaoslib_item:load {
    type = "item",
    name = "lead-chest",
    localised_name = {"entity-name.lead-chest"},
    subgroup = "storage",
    order = "a[items]-aa[lead-chest]",
    place_result = "lead-chest",
    stack_size = 50,

    inventory_move_sound = item_sounds.metal_chest_inventory_move,
    pick_sound = item_sounds.metal_chest_inventory_pickup,
    drop_sound = item_sounds.metal_chest_inventory_move,
  } :set_icons {{icon = "__khaoslead__/graphics/icons/lead-chest.png", icon_size = 64}}
    :commit()
end
