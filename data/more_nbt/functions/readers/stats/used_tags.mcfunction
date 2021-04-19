# Desc: Adds stat data to item when used. ex; times used
#
# Called By: more_nbt:reader_tick

# add "has_been_used" TRUE to global_storage.
data merge storage more_nbt:global_storage {used:{has_been_used:1b}}

# get the current "times_used" from item then add one.
execute store result score times_used Item run data get entity @p SelectedItem.tag.used.times_used
scoreboard players operation times_used Item += 1 util
execute store result storage more_nbt:global_storage used.times_used int 1 run scoreboard players get times_used Item

# apply tags to item
item entity @p weapon.mainhand modify more_nbt:stat/on_use
# reset scoreboards
scoreboard players set times_used Item 0