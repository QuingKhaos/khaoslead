local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaoslead-more"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "lead-chest",
    subgroup = "storage",
    order = "a[items]-aa[lead-chest]",
    enabled = true,
    allow_productivity = true,
    energy_required = 0.5,
    main_product = "lead-chest",
  } :set_categories {"crafting"}
    :set_icons{{icon = "__khaoslead__/graphics/icons/lead-chest.png", icon_size = 64}}
    :set_ingredients {
      {type = "item", name = "lead-plate", amount = 8},
    }
    :set_results {
      {type = "item", name = "lead-chest", amount = 1},
    }
    :commit()
end
