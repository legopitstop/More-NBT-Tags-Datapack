# Desc: Will place a block.
#
# Called By: more_nbt:reader_tick

#title @p actionbar {"entity":"@e[type=marker]","nbt":"data.components"}

# Break Block
execute at @e[tag=CustomBlockTag,tag=!BreakBlock] if block ~ ~ ~ minecraft:air run kill @e[type=minecraft:item,distance=..0.8]
execute at @e[tag=CustomBlockTag,tag=!BreakBlock] if block ~ ~ ~ minecraft:air run tag @e[tag=CustomBlockTag,distance=..0.5] add BreakBlock

# Block Trigger Events
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_use:{}}}}] as @p run function more_nbt:readers/event_triggers/block/on_use
execute at @e[tag=BreakBlock,nbt={data:{components:{on_break:{}}}}] as @p run function more_nbt:readers/event_triggers/block/on_break

## type `minecraft:loot`
execute at @e[tag=BreakBlock,nbt={data:{loot:{ignore_gamemode:true,type:"minecraft:loot"}}}] if block ~ ~ ~ minecraft:barrel run data modify block ~ ~ ~ LootTable set from entity @e[tag=BreakBlock,limit=1,distance=..0.5] data.loot.table
execute at @e[tag=BreakBlock,nbt={data:{loot:{type:"minecraft:loot"}}},nbt=!{data:{loot:{ignore_gamemode:true}}}] if entity @p[gamemode=!creative] if block ~ ~ ~ minecraft:barrel run data modify block ~ ~ ~ LootTable set from entity @e[tag=BreakBlock,limit=1,distance=..0.5] data.loot.table
execute at @e[tag=BreakBlock] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ barrel{LootTable:""}
## type `minecraft:this`
execute at @e[tag=BreakBlock,nbt={data:{loot:{ignore_gamemode:true,type:"minecraft:this"}}}] run summon item ~ ~ ~ {Tags:["BlockDropThis"],Item:{id:"minecraft:barrier",Count:1b}}
execute at @e[tag=BreakBlock,nbt={data:{loot:{ignore_gamemode:true,type:"minecraft:this"}}}] run data modify entity @e[tag=BlockDropThis,limit=1,distance=..0.7] Item set from entity @e[tag=BreakBlock,limit=1,distance=..0.7] data.loot.item
execute at @e[tag=BreakBlock,nbt={data:{loot:{ignore_gamemode:true,type:"minecraft:this"}}}] run data modify entity @e[tag=BlockDropThis,limit=1,distance=..0.7] Item.Count set value 1b
## Cleanup/remove marker entity
execute at @e[tag=BreakBlock] if block ~ ~ ~ minecraft:barrel run setblock ~ ~ ~ air
execute at @e[tag=BreakBlock] if block ~ ~ ~ minecraft:air run kill @e[tag=BreakBlock,distance=..0.5]

# Summon block from data
execute at @e[tag=CustomBlock] run summon falling_block ~ ~ ~ {NoGravity:0b,Tags:["BlockMaterial"],Time:1,BlockState:{Name:"minecraft:barrier"}}
execute at @e[tag=CustomBlock] run data modify entity @e[tag=BlockMaterial,limit=1,distance=..0.5] BlockState.Name set from storage more_nbt:util BlockTag.tag.BlockTag.material
# Summon marker that contains the custom block data
execute at @e[tag=CustomBlock] run summon minecraft:marker ~ ~ ~ {Tags:["CustomBlockTag"]}
## Custom ID
execute at @e[tag=CustomBlock] run data modify entity @e[tag=CustomBlockTag,limit=1,distance=..0.5] data.id set from storage more_nbt:util BlockTag.tag.BlockTag.id
## Block nbt
execute at @e[tag=CustomBlock] run data modify entity @e[tag=CustomBlockTag,limit=1,distance=..0.5] data.nbt set from storage more_nbt:util BlockTag.tag.BlockTag.nbt
## Block components
execute at @e[tag=CustomBlock] run data modify entity @e[tag=CustomBlockTag,limit=1,distance=..0.5] data.components set from storage more_nbt:util BlockTag.tag.BlockTag.components
## Drop loot
execute at @e[tag=CustomBlock] run data modify entity @e[tag=CustomBlockTag,limit=1,distance=..0.5] data.loot merge from storage more_nbt:util BlockTag.tag.BlockTag.loot
execute at @e[tag=CustomBlock] run data modify entity @e[tag=CustomBlockTag,limit=1,distance=..0.5] data.loot.item merge from storage more_nbt:util BlockTag
## Preset Blockstate data
execute at @e[tag=CustomBlock] run data modify entity @e[tag=CustomBlockTag,limit=1,distance=..0.5] data.BlockState merge from storage more_nbt:util BlockTag.tag.BlockStateTag
# give @p stone_slab{BlockStateTag:{type:"double"}}

# remove armorstand
execute at @e[tag=CustomBlock] run kill @e[tag=CustomBlock,distance=..0.5]