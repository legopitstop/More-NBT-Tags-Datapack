# Desc: Runs "run_command" NBT.
#
# Called By: more_nbt:readers/event_triggers/item/on_hold

# on_hold.run_command
# block
execute at @p[nbt={SelectedItem:{tag:{on_hold:{run_command:{}}}}}] run setblock ~ ~ ~ air
execute at @p[nbt={SelectedItem:{tag:{on_hold:{run_command:{}}}}}] run setblock ~ ~ ~ command_block{Command:'/tellraw @p {"text":"run_command"}',CustomName:'{"text":"Server","italic":false}',auto:1b} replace
# apply command to command block
execute at @p[nbt={SelectedItem:{tag:{on_hold:{run_command:{}}}}}] run data modify block ~ ~ ~ Command set from entity @p SelectedItem.tag.on_hold.run_command.command
# apply command block array to command blocks
execute at @p[nbt={SelectedItem:{tag:{on_hold:{run_command:{}}}}}] run data modify block ~ ~ ~ Command set from entity @p SelectedItem.tag.on_hold.run_command.command[0]

#execute unless entity @p[nbt={SelectedItem:{tag:{on_hold:{run_command:{powered:0b}}}}}] at @p[nbt={SelectedItem:{tag:{on_hold:{run_command:{}}}}}] run setblock ~ ~1 ~ redstone_block
execute unless entity @p[nbt={SelectedItem:{tag:{on_hold:{run_command:{powered:0b}}}}}] at @p[nbt={SelectedItem:{tag:{on_hold:{run_command:{}}}}}] run fill ~ ~ ~ ~ ~1 ~ air

#setblock ~ ~2 ~ structure_block{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"[Server]",rotation:"NONE",posX:0,posY:1,posZ:0,mode:"LOAD",sizeX:0,sizeY:0,sizeZ:0,integrity:1.0f,showair:0b,name:"more_nbt:test",showboundingbox:1b} replace
#setblock ~ ~1 ~ redstone_block
#fill ~ ~1 ~ ~ ~2 ~ air