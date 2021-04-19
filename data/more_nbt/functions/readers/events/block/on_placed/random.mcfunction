# Desc: random number generator
#
# Called By: more_nbt:readers/event_triggers/block/on_placed

tellraw @p {"text":"This event is still indev"}

# copy MIN and MAX to score
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{random:{}}}}}] store result score min on_use.random run data get entity @p SelectedItem.tag.on_use.random.min
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{random:{}}}}}] store result score max on_use.random run data get entity @p SelectedItem.tag.on_use.random.max
# run RNG loot table
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{random:{}}}}}] store result score result on_use.random run loot spawn ~ ~ ~ loot more_nbt:on_use_rng
# apply the result to storage
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{random:{}}}}}] store result storage more_nbt:global_storage random.result int 1 run scoreboard players get result on_use.random
# apply storage to the item
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{random:{}}}}}] run item entity @p weapon.mainhand modify more_nbt:random_result

# reset/clean up
scoreboard players set min on_use.random 0
scoreboard players set max on_use.random 0
scoreboard players set result on_use.random 0
data modify storage more_nbt:global_storage random.result set value 0