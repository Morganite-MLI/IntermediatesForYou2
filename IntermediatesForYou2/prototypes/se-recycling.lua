local util = require("__bzlib__/data-util")
if mods["space-exploration"] then
local se_recycle_long_handed_inserter_results = {{type="item", name="iron-stick", amount=1}, {type="item", name="inserter", amount=1, independent_probability=0.75}}
if data.raw.item["solder"] then
  table.insert(se_recycle_long_handed_inserter_results, {type="item", name="solder", amount=1})
end
if data.raw.item["articulated-mechanism"] then
  table.insert(se_recycle_long_handed_inserter_results, {type="item", name="articulated-mechanism", amount=1})
end
data:extend({
    {
      type = "recipe",
      name = "se-recycle-long-handed-inserter",
      icons = {
        {
          icon = "__space-exploration-graphics__/graphics/blank.png",
          icon_size = 64
        },
        {
          icon = "__base__/graphics/icons/inserter.png",
          icon_size = 64,
          scale = 0.33,
          shift = {-8, 8}
        },
        {
          icon = "__base__/graphics/icons/long-handed-inserter.png",
          icon_size = 64,
          scale = 0.33,
          shift = {8, -8}
        },
        {
          icon = "__space-exploration-graphics__/graphics/icons/transition-arrow.png",
          icon_size = 64
        }
      },
      categories = {"hard-recycling"},
      subgroup = "recycling",
      main_product = "",
      order = "l",
      enabled = false,
      energy_required = 3,
      ingredients = {{type="item", name="long-handed-inserter", amount=1}},
      results = se_recycle_long_handed_inserter_results,
    }
})
util.add_unlock("se-recycling-facility", "se-recycle-long-handed-inserter")
end