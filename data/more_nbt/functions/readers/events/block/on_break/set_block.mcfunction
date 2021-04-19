# Desc: place a block
#
# Called By: more_nbt:readers/event_triggers/block/on_break

# on_use.set_block
execute at @e[tag=CustomBlockTag,limit=1,distance=..0.5,nbt={data: {components: {on_break: {set_block: {}}}}}] run summon minecraft:falling_block ~ ~ ~ {NoGravity: 0b, Tags: ["SetBlock"], Time: 1, BlockState: {Name: "minecraft:barrier"}}
execute at @e[tag=CustomBlockTag,limit=1,distance=..0.5,nbt={data: {components: {on_break: {set_block: {}}}}}] run data modify entity @e[tag=SetBlock,limit=1,distance=..0.5] BlockState.Name set from entity @e[tag=CustomBlockTag,limit=1] data.components.on_break.set_block.block_type
execute at @e[tag=CustomBlockTag,limit=1,distance=..0.5,nbt={data: {components: {on_break: {set_block: {}}}}}] run data modify entity @e[tag=SetBlock,limit=1,distance=..0.5] Pos set from entity @e[tag=CustomBlockTag,limit=1] data.components.on_break.set_block.pos
execute at @e[tag=CustomBlockTag,limit=1,distance=..0.5,nbt={data: {components: {on_break: {set_block: {blockstate: {}}}}}}] run data modify entity @e[tag=SetBlock,limit=1,distance=..0.5] BlockState.Properties set from entity @e[tag=CustomBlockTag,limit=1] data.components.on_break.set_block.blockstate