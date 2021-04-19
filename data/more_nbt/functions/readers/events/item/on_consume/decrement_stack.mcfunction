# Desc: remove one item from stack
#
# Called By: more_nbt:readers/item/food_events

# Grab number of items in mainhand and remove one.
execute store result score Count util run data get entity @p SelectedItem.Count
scoreboard players remove Count util 1
# apply new Count to mainhand item.
execute if data storage more_nbt:util {food:{on_consume:{decrement_stack:{}}}} run item entity @p[gamemode=!creative] weapon.mainhand modify more_nbt:item/decrement_stack
execute if data storage more_nbt:util {food:{on_consume:{decrement_stack:{ignore_game_mode:true}}}} run item entity @p weapon.mainhand modify more_nbt:item/decrement_stack
# reset
scoreboard players set Count util 0