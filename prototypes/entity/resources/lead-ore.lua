require("__base__.prototypes.factoriopedia-util");
local khaoslib_entity = require('__khaoslib__.prototypes.entity')
local resource_autoplace = require('__core__.lualib.resource-autoplace')

data.raw["planet"]["nauvis"].map_gen_settings = util.merge {data.raw["planet"]["nauvis"].map_gen_settings, {
  autoplace_controls = {
    ["lead-ore"] = {},
  },
  autoplace_settings = {
    entity = {
      settings = {
        ["lead-ore"] = {},
      },
    },
  },
}}

resource_autoplace.initialize_patch_set("lead-ore", true)

data:extend {
  {
    type = "autoplace-control",
    name = "lead-ore",
    localised_name = {"", "[entity=lead-ore] ", {"entity-name.lead-ore"}},
    category = "resource",
    order = "a-1",
    richness = true,
  },
}

local resource = khaoslib_entity:load {
    type = "resource",
    name = "lead-ore",
    flags = {"placeable-neutral"},
    order = "a-b-a",

    map_color = {r = 0.35, g = 0.10, b = 0.10},
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},

    factoriopedia_simulation = {
      init = make_resource("lead-ore"),
    },

    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "lead-ore",
      order = "a-t",
      base_density = 6,
      base_spots_per_km2 = 1,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1.2,
      starting_rq_factor_multiplier = 1.7,
    },

    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages = {
      sheet = {
        filename = "__khaoslead__/graphics/entity/lead-ore/lead-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5,
      },
    },
} :set_icons {{icon = "__khaoslead__/graphics/icons/lead-ore.png", icon_size = 64}}
  :set_minable {hardness = 1, mining_time = 1, mining_particle = "lead-ore-particle", result = "lead-ore"}

-- Modify lead autoplace richness:
-- Up to 200 tiles it's standard
-- From 200 to 700 tiles, richness scales linearly down, until
-- From 700 tiles onward, it's about 1/6th the richness.
local autoplace = resource:get().autoplace
if autoplace then
  resource:set {
    --- @diagnostic disable-next-line: missing-fields, assign-type-mismatch
    autoplace = {
      richness_expression = autoplace.richness_expression .. [[ *
        if(distance_from_nearest_point{x = x, y = y, points = starting_positions} < 200, 1,
          if(distance_from_nearest_point{x = x, y = y, points = starting_positions} < 700,
            100/(distance_from_nearest_point{x = x, y = y, points = starting_positions} - 100), 0.17))]],
    },
  }
end

resource:commit()
