# Desc: Runs "transform_item" NBT.
#
# Called By: more_nbt:main_tick

# copy MIN and MAX to score
execute at @p[nbt={SelectedItem:{tag:{on_hold:{random:{}}}}}] store result score min on_hold.random run data get entity @p SelectedItem.tag.on_hold.random.min
execute at @p[nbt={SelectedItem:{tag:{on_hold:{random:{}}}}}] store result score max on_hold.random run data get entity @p SelectedItem.tag.on_hold.random.max
# run RNG loot table
execute at @p[nbt={SelectedItem:{tag:{on_hold:{random:{}}}}}] store result score result on_hold.random run loot spawn ~ ~ ~ loot more_nbt:on_hold_rng
# apply the result to storage
execute at @p[nbt={SelectedItem:{tag:{on_hold:{random:{}}}}}] store result storage more_nbt:global_storage random.result int 1 run scoreboard players get result on_hold.random
# apply storage to the item
execute at @p[nbt={SelectedItem:{tag:{on_hold:{random:{}}}}}] run item entity @p weapon.mainhand modify more_nbt:random_result

# reset/clean up
scoreboard players set min on_hold.random 0
scoreboard players set max on_hold.random 0
scoreboard players set result on_hold.random 0
data modify storage more_nbt:global_storage random.result set value 0