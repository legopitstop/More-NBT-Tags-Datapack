# Desc: give item
#
# Called By: more_nbt:main_tick

# summon template item
execute at @p[scores={GiveItem=0..}] run summon item ~ ~ ~ {Tags:["CustomItem"],Item:{id:"minecraft:stone",Count:1b}}

# Apply data to item from storage
execute at @p[scores={GiveItem=0}] run data modify entity @e[tag=CustomItem,limit=1] Item.id set from storage more_nbt:items items[0].material
execute at @p[scores={GiveItem=0}] run data modify entity @e[tag=CustomItem,limit=1] Item.tag set from storage more_nbt:items items[0].nbt
execute at @p[scores={GiveItem=0}] run data modify entity @e[tag=CustomItem,limit=1] Item.Count set from storage more_nbt:items items[0].count
execute at @p[scores={GiveItem=0}] run data modify entity @e[tag=CustomItem,limit=1] Item.tag.id set from storage more_nbt:items items[0].item

# reset score
execute at @p[scores={GiveItem=0..}] run scoreboard players set @p GiveItem -1