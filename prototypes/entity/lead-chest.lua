require("__core__.lualib.circuit-connector-sprites")
local khaoslib_entity = require("__khaoslib__.prototypes.entity")

if settings.startup["khaoslead-more"].value then
  khaoslib_entity:load {
    type = "container",
    name = "lead-chest",
    flags = {"placeable-neutral", "player-creation"},
    max_health = 150,
    corpse = "lead-chest-remnants",

    open_sound = {filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65},
    close_sound = {filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7},
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},

    resistances = {
      {type = "fire", percent = 80},
    },

    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 24,

    picture = {
      layers = {
        {
            filename = "__khaoslead__/graphics/entity/lead-chest/lead-chest.png",
            priority = "extra-high",
            width = 66,
            height = 76,
            shift = util.by_pixel(-0.5, -0.5),
            scale = 0.5,
        },
        {
            filename = "__khaoslead__/graphics/entity/lead-chest/lead-chest-shadow.png",
            priority = "extra-high",
            width = 110,
            height = 50,
            shift = util.by_pixel(10.5, 6),
            draw_as_shadow = true,
            scale = 0.5,
        },
      },
    },

    circuit_wire_max_distance = default_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["chest"],
  } :set_icons {{icon = "__khaoslead__/graphics/icons/lead-chest.png", icon_size = 64}}
    :set_minable {mining_time = 0.2, result = "lead-chest"}
    :commit()
end
