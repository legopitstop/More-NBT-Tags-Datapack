# Desc: Runs "transform_item" NBT.
#
# Called By: more_nbt:readers/event_triggers/item/on_use

# copy MIN and MAX to score
execute at @p[nbt={SelectedItem:{tag:{on_use:{random:{}}}}}] store result score min on_use.random run data get entity @p SelectedItem.tag.on_use.random.min
execute at @p[nbt={SelectedItem:{tag:{on_use:{random:{}}}}}] store result score max on_use.random run data get entity @p SelectedItem.tag.on_use.random.max
# run RNG loot table
execute at @p[nbt={SelectedItem:{tag:{on_use:{random:{}}}}}] store result score result on_use.random run loot spawn ~ ~ ~ loot more_nbt:on_use_rng
# apply the result to storage
execute at @p[nbt={SelectedItem:{tag:{on_use:{random:{}}}}}] store result storage more_nbt:global_storage random.result int 1 run scoreboard players get result on_use.random
# apply storage to the item
execute at @p[nbt={SelectedItem:{tag:{on_use:{random:{}}}}}] run item entity @p weapon.mainhand modify more_nbt:random_result

# reset/clean up
scoreboard players set min on_use.random 0
scoreboard players set max on_use.random 0
scoreboard players set result on_use.random 0
data modify storage more_nbt:global_storage random.result set value 0