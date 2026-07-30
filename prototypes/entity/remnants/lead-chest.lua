require("__core__.lualib.circuit-connector-sprites")
local khaoslib_entity = require("__khaoslib__.prototypes.entity")

if settings.startup["khaoslead-more"].value then
  khaoslib_entity:load {
    type = "corpse",
    name = "lead-chest-remnants",
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    subgroup = "storage-remnants",
    order = "a-a-b",

    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tile_width = 1,
    tile_height = 1,

    selectable_in_game = false,
    time_before_removed = 15 * minute,

    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    hidden_in_factoriopedia = true,

    animation = {
        filename = "__khaoslead__/graphics/entity/lead-chest/lead-chest-remnants.png",
        line_length = 1,
        width = 126,
        height = 78,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(12, 0),
        scale = 0.5,
    },
  } :set_icons {{icon = "__khaoslead__/graphics/icons/lead-chest.png", icon_size = 64}}
    :commit()
end
