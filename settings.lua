local khaoslib_setting = require("__khaoslib__.settings.setting")

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaoslead-byproduct",
  setting_type = "startup",
  default_value = true,
} :commit()

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaoslead-more",
  setting_type = "startup",
  default_value = true,
} :commit()
