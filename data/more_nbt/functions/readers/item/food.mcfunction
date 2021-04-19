# Desc: Food component
#
# Called By: more_nbt:main_tick

# test
#execute at @p[scores={is_holding_food=1..,used.food=1..}] run tellraw @p {"storage":"more_nbt:util","nbt":"food"}

# using_converts_to
execute at @p[scores={is_holding_food=1..,used.food=1..},gamemode=!creative] if data storage more_nbt:util food.using_converts_to.id run item entity @p weapon.mainhand replace air
execute at @p[scores={is_holding_food=1..,used.food=1..},gamemode=!creative] if data storage more_nbt:util food.using_converts_to.id run summon item ~ ~ ~ {Tags:["using_converts_to_item"],Item:{id:"minecraft:stone",Count:1b}}
execute at @p[scores={is_holding_food=1..,used.food=1..},gamemode=!creative] if data storage more_nbt:util food.using_converts_to.id run data modify entity @e[type=item,limit=1,tag=using_converts_to_item] Item.id set from storage more_nbt:util food.using_converts_to.id
execute at @p[scores={is_holding_food=1..,used.food=1..},gamemode=!creative] if data storage more_nbt:util food.using_converts_to.tag run data modify entity @e[type=item,limit=1,tag=using_converts_to_item] Item.tag set from storage more_nbt:util food.using_converts_to.tag

execute at @p[scores={is_holding_food=1..,used.food=1..}] if data storage more_nbt:util food.on_consume run function more_nbt:readers/item/food_events

execute at @p[nbt={SelectedItem: {tag: {moreNBT:{},food: {}}}}] run data modify storage more_nbt:util food set from entity @p SelectedItem.tag.food
execute at @p[nbt={SelectedItem: {tag: {moreNBT:{},food: {}}}}] run scoreboard players set @p is_holding_food 1