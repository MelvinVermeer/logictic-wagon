local item = {
    type = "item-with-entity-data",
    name = "logistic-wagon",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    icon_size = 32,
    flags = {},
    subgroup = "transport",
    order = "a[train-system]-gz[logistic-wagon]",
    place_result = "logistic-wagon",
    stack_size = 5
}

-- docs https://wiki.factorio.com/Prototype/CargoWagon
local wagon = util.table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
wagon.name = "logistic-wagon"
wagon.icons = {{icon = wagon.icon, tint = {r = 0, g = 0, b = 1, a = 0.3}}}
wagon.minable.result = "logistic-wagon"

local recipe = {
    type = "recipe",
    name = "logistic-wagon",
    enabled = true,
    ingredients = {{"copper-plate", 1}},
    result = "logistic-wagon"
}

data:extend{item, wagon, recipe}
