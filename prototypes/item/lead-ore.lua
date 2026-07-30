local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "lead-ore",
  localised_name = {"entity-name.lead-ore"},
  subgroup = "raw-resource",
  order = "da[lead-ore]",
  stack_size = 50,
  weight = 4.5 * kg,

  inventory_move_sound = item_sounds.wire_inventory_move,
  pick_sound = item_sounds.wire_inventory_pickup,
  drop_sound = item_sounds.wire_inventory_move,

  pictures = {
    {filename = "__khaoslead__/graphics/icons/lead-ore.png", size = 64, scale = 0.5},
    {filename = "__khaoslead__/graphics/icons/lead-ore-1.png", size = 64, scale = 0.5},
    {filename = "__khaoslead__/graphics/icons/lead-ore-2.png", size = 64, scale = 0.5},
    {filename = "__khaoslead__/graphics/icons/lead-ore-3.png", size = 64, scale = 0.5},
  },
} :set_icons {{icon = "__khaoslead__/graphics/icons/lead-ore.png", icon_size = 64}}
  :commit()
