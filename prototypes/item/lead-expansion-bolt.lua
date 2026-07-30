local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

if settings.startup["khaoslead-more"].value then
  khaoslib_item:load {
    type = "item",
    name = "lead-expansion-bolt",
    subgroup = "intermediate-product",
    order = "a[basic-intermediates]-ba[expansion-bolt]",
    stack_size = 100,
    weight = 2 * kg,

    inventory_move_sound = item_sounds.metal_small_inventory_move,
    pick_sound = item_sounds.metal_small_inventory_pickup,
    drop_sound = item_sounds.metal_small_inventory_move,
  } :set_icons {{icon = "__khaoslead__/graphics/icons/lead-expansion-bolt.png", icon_size = 64}}
    :commit()
end
