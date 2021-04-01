# Desc: Runs "transform_item" NBT.
#
# Called By: more_nbt:main_tick

# copy MIN and MAX to score
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{random:{}}}}}] store result score min onUse.random run data get entity @p SelectedItem.tag.onUse.random.min
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{random:{}}}}}] store result score max onUse.random run data get entity @p SelectedItem.tag.onUse.random.max
# run RNG loot table
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{random:{}}}}}] store result score result onUse.random run loot spawn ~ ~ ~ loot more_nbt:on_use_rng
# apply the result to storage
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{random:{}}}}}] store result storage more_nbt:global_storage random.result int 1 run scoreboard players get result onUse.random
# apply storage to the item
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{random:{}}}}}] run item entity @p weapon.mainhand modify more_nbt:random_result

# reset/clean up
scoreboard players set min onUse.random 0
scoreboard players set max onUse.random 0
scoreboard players set result onUse.random 0
data modify storage more_nbt:global_storage random.result set value 0