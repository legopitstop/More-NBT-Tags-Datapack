# Desc: place a structure.
#
# Called By: more_nbt:readers/event_triggers/block/on_placed

# set default structure block
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{structure:{}}}}}] run setblock ~ ~ ~ structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"[Server]",rotation:"NONE",posX:0,posY:1,posZ:0,mode:"LOAD",sizeX:0,sizeY:0,sizeZ:0,integrity:1.0f,showair:0b,name:"more_nbt:test",showboundingbox:1b} replace
# Apply structure name
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{structure:{}}}}}] run data modify block ~ ~ ~ name set from entity @p SelectedItem.tag.on_use.structure.structure_name
# Apply ignore entities
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{structure:{}}}}}] store result block ~ ~ ~ ignoreEntities byte 1 run data get entity @p SelectedItem.tag.on_use.structure.ignoreEntities
# Apply position
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{structure:{}}}}}] store result block ~ ~ ~ posX int 1 run data get entity @p SelectedItem.tag.on_use.structure.pos[0]
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{structure:{}}}}}] store result block ~ ~ ~ posY int 1 run data get entity @p SelectedItem.tag.on_use.structure.pos[1]
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{structure:{}}}}}] store result block ~ ~ ~ posZ int 1 run data get entity @p SelectedItem.tag.on_use.structure.pos[2]
# Power the structure block.
execute at @e[tag=CustomBlockTag,nbt=!{data:{components:{on_placed:{structure:{powered:0b}}}}}] at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{structure:{}}}}}] run setblock ~ ~1 ~ redstone_block
execute at @e[tag=CustomBlockTag,nbt=!{data:{components:{on_placed:{structure:{powered:0b}}}}}] at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{structure:{}}}}}] run fill ~ ~ ~ ~ ~1 ~ air replace structure_block
execute at @e[tag=CustomBlockTag,nbt=!{data:{components:{on_placed:{structure:{powered:0b}}}}}] at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{structure:{}}}}}] run fill ~ ~ ~ ~ ~1 ~ air replace redstone_block