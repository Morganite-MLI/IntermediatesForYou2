local util = require("data-util")

local turret_base_ingredients = {{type="item", name="iron-plate", amount=10}, {type="item", name="iron-gear-wheel", amount=10}}
if mods["Krastorio2"] and mods["aai-industry"] then
    turret_base_ingredients = {{type="item", name="kr-iron-beam", amount=5}, {type="item", name="motor", amount=5}, {type="item", name="iron-gear-wheel", amount=4}}
end

if mods["Krastorio2"] then
  local electronic_ingredients = {{type="item", name="kr-electronic-components", amount=3}}
  if mods["bzgold2"] then
    electronic_ingredients = {{type="item", name="kr-electronic-components", amount=1}, {type="item", name="cpu", amount=1}}
    if mods["ThemTharHills-Updated"] then
      table.insert(electronic_ingredients, {type="item", name="integrated-circuit", amount=5})
    elseif mods["MDbobelectronics2"] then
      table.insert(electronic_ingredients, {type="item", name="intergrated-electronics", amount=2})
    end
  elseif mods["MDbobelectronics2"] then
    electronic_ingredients = {{type="item", name="kr-electronic-components", amount=1}, {type="item", name="intergrated-electronics", amount=2}, {type="item", name="processing-electronics", amount=1}}
  end
  data:extend({
    {
      type = "item",
      name = "advanced-electronic-components",
      icon = "__IntermediatesForYou2__/graphics/icons/advanced-electronic-components.png",
      icon_size = 64,
      group = "kr-electronic-components",
      subgroup = "intermediate-product",
      order = "e03",
      stack_size = 100,
    },
    {
      type = "recipe",
      name = "advanced-electronic-components",
      category = "crafting",
      order = "e03",
      enabled = false,
      energy_required = 4,
      ingredients = electronic_ingredients,
      results = {{type="item", name="advanced-electronic-components", amount=2}},
    }
  })
  if mods["248k-Redux"] then
    data:extend({
      {
        type = "recipe",
        name = "charged-crystal-imersite-powder",
        icons =
          {
            { icon = "__Krastorio2Assets__/icons/items/imersite-powder.png", icon_size = 64},
            { icon = "__248k-Redux-graphics__/ressources/fusion/fu_materials/fu_materials_energy_crystal_charged.png", icon_size = 64, scale=0.3, shift= {-8, -8}},
          },
        category = "kr-crushing",
        order = "a-a-a-1",
        enabled = false,
        energy_required = 4,
        ingredients = {{type="item", name="fu_materials_energy_charged_crystal", amount=1}},
        results = {{type="item", name="kr-imersite-powder", amount=2}},
      }
    })
    util.add_unlock("kr-imersium-processing", "charged-crystal-imersite-powder")
  end

  util.add_unlock("processing-unit", "advanced-electronic-components")
end

local turret_large_base_ingredients = {(data.raw.item["tantalum-titanium-beam"] and {type="item", name="tantalum-titanium-beam", amount=60}) or {type="item", name="steel-plate", amount=60}, {type="item", name="concrete", amount=60}}
if data.raw.item["lead-plate"] then
  table.insert(turret_large_base_ingredients, {type="item", name="lead-plate", amount=20})
end

local satellite_body_ingredients = {{type="item", name="low-density-structure", amount=50}}
if mods["bismuth"] then
  table.insert(satellite_body_ingredients, {type="item", name="bismuth-glass", amount=100})
end
if mods["bzcarbon2"] then
  table.insert(satellite_body_ingredients, {type="item", name="graphene", amount=100})
end
if data.raw.item["gimbaled-thruster"] then
  table.insert(satellite_body_ingredients, {type="item", name="gimbaled-thruster", amount=10})
end
if mods["248k-Redux"] then
  table.insert(satellite_body_ingredients, {type="item", name="fu_materials_KFK", amount=10})
end

local shock_absorber_ingredients = {{type="item", name="spring", amount=1}, {type="item", name="iron-stick", amount=1}}
if data.raw.item["rubber"] then
  table.insert(shock_absorber_ingredients, {type="item", name="rubber", amount=1})
end

local spring_icon = "__IntermediatesForYou2__/graphics/icons/spring.png"
local spring_icon_size = 64

data:extend({
  {
    type = "item",
    name = "turret-base",
    icon = "__IntermediatesForYou2__/graphics/icons/turret-base.png",
    icon_size = 64,
    group = "intermediate-product",
    subgroup = "intermediate-product",
    order = "t",
    stack_size = 100,
  },
  {
    type = "item",
    name = "turret-large-base",
    icon = "__IntermediatesForYou2__/graphics/icons/turret-large-base.png",
    icon_size = 64,
    group = "intermediate-product",
    subgroup = "intermediate-product",
    order = "t",
    stack_size = 50,
  },
  {
    type = "item",
    name = "spring",
    icon = spring_icon,
    icon_size = spring_icon_size,
    group = "intermediate-product",
    subgroup = "intermediate-product",
    order = "a[spring]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "satellite-body",
    icon = "__IntermediatesForYou2__/graphics/icons/satellite-body.png",
    icon_size = 64,
    group = "intermediate-product",
    subgroup = "intermediate-product",
    order = "s",
    stack_size = 100,
  },
  {
    type = "item",
    name = "shock-absorber",
    icon = "__IntermediatesForYou2__/graphics/icons/shock-absorber.png",
    icon_size = 64,
    group = "intermediate-product",
    subgroup = "intermediate-product",
    order = "s",
    stack_size = 100,
  },
  {
    type = "recipe",
    name = "turret-base",
    category = "crafting",
    order = "t",
    enabled = false,
    energy_required = 8,
    ingredients = turret_base_ingredients,
    results = {{type="item", name="turret-base", amount=1}},
  },
  {
    type = "recipe",
    name = "spring",
    category = "crafting",
    order = "s1[spring]",
    enabled = false,
    energy_required = 2,
    ingredients = {{type="item", name="copper-plate", amount=1}},
    results = {{type="item", name="spring", amount=1}},
  },
  {
    type = "recipe",
    name = "turret-large-base",
    category = "crafting",
    order = "t",
    enabled = false,
    energy_required = 16,
    ingredients = turret_large_base_ingredients,
    results = {{type="item", name="turret-large-base", amount=1}},
  },
  {
    type = "recipe",
    name = "satellite-body",
    category = "crafting",
    order = "s",
    enabled = false,
    energy_required = 20,
    ingredients = satellite_body_ingredients,
    results = {{type="item", name="satellite-body", amount=1}},
  },
  {
    type = "recipe",
    name = "shock-absorber",
    category = "crafting",
    order = "s",
    enabled = false,
    energy_required = 4,
    ingredients = shock_absorber_ingredients,
    results = {{type="item", name="shock-absorber", amount=1}},
  }
})
util.add_unlock("gun-turret", "turret-base")
util.add_unlock("artillery", "turret-large-base")
util.add_unlock("logistics", "spring")
util.add_unlock("rocket-silo","satellite-body")
util.add_unlock("fast-inserter", "shock-absorber")

if mods["bzfoundry2"] and data.raw.item["bronze-plate"] then
  local bronze_plate_icon = data.raw.item["bronze-plate"].icon 
                         or data.raw.item["bronze-plate"].icons and data.raw.item["bronze-plate"].icons[1].icon
  local bronze_plate_icon_size = data.raw.item["bronze-plate"].icon_size
                              or data.raw.item["bronze-plate"].icons and data.raw.item["bronze-plate"].icons[1].icon_size
data:extend({
  {
    type = "recipe",
    name = "bronze-spring",
    category = "crafting",
    order = "s2[spring]",
    icons = (data.raw.item["bronze-plate"] and
        {
          { icon = spring_icon, icon_size = spring_icon_size },
          { icon = bronze_plate_icon, icon_size = bronze_plate_icon_size, scale = 0.125, shift = { -8, -8 } }
        } or {
          { icon = spring_icon, icon_size = spring_icon_size }
        }
      ),
    enabled = false,
    energy_required = 2,
    ingredients = {{type="item", name="bronze-plate", amount=1}},
    results = {{type="item", name="spring", amount=2}},
  }
})
  util.add_unlock("foundry", "bronze-spring")
end

if mods["ThemTharHills-Updated"] then
local low_quality_advanced_circuit_ingredients = {{type="item", name="copper-cable", amount=3}, {type="item", name="electronic-circuit", amount=3}}
if data.raw.item["solder"] then
  table.insert(low_quality_advanced_circuit_ingredients, {type="item", name="solder", amount=4})
end
if data.raw.item["kr-electronic-components"] then
  table.insert(low_quality_advanced_circuit_ingredients, {type="item", name="kr-electronic-components", amount=2})
end
if data.raw.item["circuit-board"] then
  table.insert(low_quality_advanced_circuit_ingredients, {type="item", name="circuit-board", amount=1})
end
local low_quality_advanced_circuit_results = {{ type = "item", name = "advanced-circuit", amount=1, probability=0.75}}
if mods["space-exploration"] then
  table.insert(low_quality_advanced_circuit_results, { type = "item", name = "se-scrap", amount=1, probability=0.25})
end

data:extend({
  {
    type = "recipe",
    name = "low-quality-advanced-circuit",
    category = "crafting",
    icons = (mods["Krastorio2"] and
        {
          { icon = "__base__/graphics/icons/advanced-circuit.png", icon_size = 64},
          { icon = "__base__/graphics/icons/copper-cable.png", icon_size = 64, scale=0.25, shift= {-8, -8}},
        } or {
          { icon = "__base__/graphics/icons/advanced-circuit.png", icon_size = 64},
        }
    ),
    main_product = "advanced-circuit",
    order = "f",
    enabled = false,
    energy_required = 6,
    ingredients = low_quality_advanced_circuit_ingredients,
    results = low_quality_advanced_circuit_results,
  }
})
util.add_unlock("advanced-circuit", "low-quality-advanced-circuit")
end

if mods["aai-industry"] or mods["Krastorio2"] then
  data:extend({
    {
      type = "item",
      name = "slag",
      icon = "__IntermediatesForYou2__/graphics/icons/slag.png",
      icon_size = 128,
      group = "resources",
      subgroup = "raw-material",
      order = "a[slag]",
      stack_size = 100,
    },
    {
      type = "recipe",
      name = "slag",
      category = "smelting",
      order = "s[slag]",
      enabled = false,
      energy_required = 2,
      ingredients = {{type="item", name=mods["Krastorio2"] and "kr-sand" or "sand", amount=10}},
      results = {{type="item", name="slag", amount=1}},
    },
    {
      type = "recipe",
      name = "iron-extraction",
      icons =
        {
          { icon = "__base__/graphics/icons/iron-ore.png", icon_size = 64},
          { icon = "__IntermediatesForYou2__/graphics/icons/slag.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
        },
      category = "smelting",
      order = "s[slag]",
      enabled = false,
      energy_required = 2,
      ingredients = {{type="item", name="slag", amount=5}},
      results = {{type="item", name="iron-ore", amount=1}},
    }
  })
end

if mods["space-exploration"] then
  local trace_rare_ore_extraction_ingredients = {{type="item", name="elementite-dust", amount=5}}
  if data.raw.item["cobalt-electromagnet"] then
    table.insert(trace_rare_ore_extraction_ingredients, {type="item", name="cobalt-electromagnet", amount=1})
  end
  local trace_rare_ore_extraction_results = {{type="item", name=mods["Krastorio2"] and "kr-sand" or "sand", amount=1}, {type="item", name="se-iridium-powder", amount=1, probability=0.1}, {type="item", name="se-holmium-powder", amount=1, probability=0.1}, {type="item", name="se-beryllium-powder", amount=1, probability=0.1}}
  if data.raw.item["cobalt-electromagnet"] then
    table.insert(trace_rare_ore_extraction_results, {type="item", name="cobalt-electromagnet", amount=1, probability=0.95})
  end
  local elementium_heat_shielding_ingredients = {{type="item", name="elementium-plate", amount=1}, {type="item", name="sulfur", amount=1}}
  if data.raw.item["cuw"] then
    table.insert(elementium_heat_shielding_ingredients, {type="item", name="cuw", amount=1})
  end
  if data.raw.item["zirconia"] then
    table.insert(elementium_heat_shielding_ingredients, {type="item", name="zirconia", amount=1})
  end
  if data.raw.item["niobium-plate"] then
    table.insert(elementium_heat_shielding_ingredients, {type="item", name="niobium-plate", amount=1})
  end
  data:extend({
    {
      type = "item",
      name = "elementite",
      icon = "__IntermediatesForYou2__/graphics/icons/elementite.png",
      icon_size = 128,
      group = "resources",
      subgroup = "raw-material",
      order = "e[elementite]",
      stack_size = 50,
    },
    {
      type = "item",
      name = "elementite-dust",
      icon = "__IntermediatesForYou2__/graphics/icons/elementite-dust.png",
      icon_size = 128,
      group = "resources",
      subgroup = "raw-material",
      order = "e[elementite]",
      stack_size = 200,
    },
    {
      type = "item",
      name = "elementium-plate",
      icon = "__IntermediatesForYou2__/graphics/icons/elementium-plate.png",
      icon_size = 64,
      group = "resources",
      subgroup = "raw-material",
      order = "e[elementite]",
      stack_size = 100,
    },
    {
      type = "recipe",
      name = "elementite",
      category = "space-thermodynamics",
      order = "e[elementite]",
      enabled = false,
      energy_required = 20,
      ingredients = {{type="item", name="se-cryonite-rod", amount=5}, {type="item", name="se-vulcanite-block", amount=5}},
      results = {{type="item", name="elementite", amount=4}},
    },
    {
      type = "recipe",
      name = "elementium-plate",
      category = "space-thermodynamics",
      order = "e[elementite]",
      enabled = false,
      energy_required = 20,
      ingredients = {{type="item", name="elementite", amount=5}},
      results = {{type="item", name="elementium-plate", amount=1}},
    },
    {
      type = "recipe",
      name = "elementite-dust",
      category = "pulverising",
      order = "e[elementite]",
      enabled = false,
      energy_required = 2,
      ingredients = {{type="item", name="elementite", amount=5}},
      results = {{type="item", name="elementite-dust", amount=5}},
    },
    {
      type = "recipe",
      name = "trace-rare-ore-extraction",
      icon = "__IntermediatesForYou2__/graphics/icons/trace-rare-ore-extraction.png",
      icon_size = 128,
      category = "space-radiation",
      order = "e[elementite]",
      group = "resources",
      subgroup = "raw-material",
      enabled = false,
      energy_required = 20,
      ingredients = trace_rare_ore_extraction_ingredients,
      results = trace_rare_ore_extraction_results,
    },
    {
      type = "recipe",
      name = "elementium-heat-shielding",
      icons =
        {
          { icon = "__space-exploration-graphics__/graphics/icons/heat-shielding.png", icon_size = 64},
          { icon = "__IntermediatesForYou2__/graphics/icons/elementium-plate.png", icon_size = 64, scale=0.3, shift= {-8, -8}},
        },
      category = "crafting",
      order = "f",
      enabled = false,
      energy_required = 10,
      ingredients = elementium_heat_shielding_ingredients,
      results = {{type="item", name="se-heat-shielding", amount=1}},
    }
  })
end