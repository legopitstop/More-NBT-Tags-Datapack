# Desc: Runs "used_tag" NBT.
#
# Called By: more_nbt:main_tick
# used:{has_been_used:1b,times_used:123}

# add "has_been_used" TRUE to global_storage.
data merge storage more_nbt:global_storage {used:{has_been_used:1b}}

# get the current "times_used" from item then add one.
execute store result score int util run data get entity @p SelectedItem.tag.used.times_used
scoreboard players operation int util += 1 util
execute store result storage more_nbt:global_storage used.times_used int 1 run scoreboard players get int util

# apply tags to item
item entity @p weapon.mainhand modify more_nbt:used
# reset scoreboards
function more_nbt:data/reset_util_score
