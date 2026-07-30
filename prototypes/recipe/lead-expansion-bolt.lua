local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")


if settings.startup["khaoslead-more"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "lead-expansion-bolt",
    subgroup = "intermediate-product",
    order = "a[basic-intermediates]-ba[expansion-bolt]",
    enabled = true,
    allow_productivity = true,
    energy_required = 1,
    main_product = "lead-expansion-bolt",
  } :set_categories {"crafting"}
    :set_icons{{icon = "__khaoslead__/graphics/icons/lead-expansion-bolt.png", icon_size = 64}}
    :set_ingredients {
      {type = "item", name = "lead-plate", amount = 1},
      {type = "item", name = "iron-plate", amount = 1},
    }
    :set_results {
      {type = "item", name = "lead-expansion-bolt", amount = 2},
    }
    :commit()
end
