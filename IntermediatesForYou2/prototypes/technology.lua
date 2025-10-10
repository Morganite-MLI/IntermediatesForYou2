local util = require("data-util")

if mods["aai-industry"] or mods["Krastorio2"] then
    data:extend(
        {
          {
            type = "technology",
            name = "slag-processing",
            icon = "__IntermediatesForYou2__/graphics/icons/slag.png",
            icon_size = 128,
            prerequisites = {"advanced-material-processing-2"},
            effects = {
                {
                  type = "unlock-recipe",
                  recipe = "slag",
                },
                {
                    type = "unlock-recipe",
                    recipe = "iron-extraction",
                  }
            },
            unit =
            {
              count = 100,
              ingredients =
              {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 }
              },
              time = 30
            }
        }
    })
end

if mods["space-exploration"] then
  data:extend(
      {
        {
          type = "technology",
          name = "elementite-processing",
          icon = "__IntermediatesForYou2__/graphics/icons/elementite.png",
          icon_size = 128,
          prerequisites = {"production-science-pack"}, {"se-space-radiation-laboratory"},
          effects = {
              {
                type = "unlock-recipe",
                recipe = "elementite",
              },
              {
                  type = "unlock-recipe",
                  recipe = "trace-rare-ore-extraction",
              },
              {
                  type = "unlock-recipe",
                  recipe = "elementite-dust",
              },
              {
                  type = "unlock-recipe",
                  recipe = "elementium-plate",
              },
              {
                  type = "unlock-recipe",
                  recipe = "elementium-heat-shielding",
              }
          },
          unit =
          {
            count = 300,
            ingredients =
            {
              { "automation-science-pack", 1 },
              { "logistic-science-pack", 1 },
              { "chemical-science-pack", 1 },
              { "se-rocket-science-pack", 1 },
              { "space-science-pack", 1 },
              { "production-science-pack", 1 },
              { "utility-science-pack", 1 }
            },
            time = 30
          }
      }
  })
end