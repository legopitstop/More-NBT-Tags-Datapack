# Desc: Runs "used_on_tags" NBT.
#
# Called By: more_nbt:reader_tick

# add "has_been_used_on" TRUE to global_storage.
data merge storage more_nbt:global_storage {used_on:{has_been_used:1b}}

# get the current "times_used_on" from item then add one.
execute store result score int util run data get entity @p SelectedItem.tag.used_on.times_used_on
scoreboard players operation int util += 1 util
execute store result storage more_nbt:global_storage used_on.times_used int 1 run scoreboard players get int util

# apply tags to item
item entity @p weapon.mainhand modify more_nbt:stat/on_use_on
# reset scoreboards
function more_nbt:data/reset_util_score
