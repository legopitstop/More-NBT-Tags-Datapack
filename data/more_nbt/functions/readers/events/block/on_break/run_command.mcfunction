# Desc: run command
#
# Called By: more_nbt:readers/event_triggers/block/on_break

tellraw @p {"text":"This event is still indev"}

# on_use.run_command
# block
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_break:{run_command:{}}}}}] run setblock ~ ~ ~ air
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_break:{run_command:{}}}}}] run setblock ~ ~ ~ command_block{Command:'/tellraw @p {"text":"run_command"}',CustomName:'{"text":"Server","italic":false}',auto:1b} replace
# apply command to command block
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_break:{run_command:{}}}}}] run data modify block ~ ~ ~ Command set from entity @p SelectedItem.tag.on_use.run_command.command
# apply command block array to command blocks
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_break:{run_command:{}}}}}] run data modify block ~ ~ ~ Command set from entity @p SelectedItem.tag.on_use.run_command.command[0]

execute at @e[tag=CustomBlockTag,nbt=!{data:{components:{on_break:{run_command:{powered:0b}}}}}] at @e[tag=CustomBlockTag,nbt={data:{components:{on_break:{run_command:{}}}}}] run fill ~ ~ ~ ~ ~1 ~ air
