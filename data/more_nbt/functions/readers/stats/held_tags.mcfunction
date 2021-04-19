# Desc: Adds stat data to item when held. ex; times held
#
# Called By: more_nbt:reader_tick

# add "has_been_held" TRUE to global_storage.
data merge storage more_nbt:global_storage {held:{has_been_held:1b}}

# get the current "times_held" from item then add one.
execute store result score int util run data get entity @p SelectedItem.tag.held.times_held
scoreboard players operation int util += 1 util
execute store result storage more_nbt:global_storage held.times_held int 1 run scoreboard players get int util

# apply tags to item
item entity @p weapon.mainhand modify more_nbt:stat/on_hold
# reset scoreboards
function more_nbt:data/reset_util_score
