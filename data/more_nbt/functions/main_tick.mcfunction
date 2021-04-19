# Desc: runs all files (looping)
#
# Called by: #minecraft:tick

# Item cooldown
execute if score cooldown Item matches 1.. run scoreboard players remove cooldown Item 1
# Useful scores
execute store result score daytime Time run time query daytime
execute store result score day Time run time query day
execute store result score gametime Time run time query gametime

# Custom give Item
execute at @p[scores={GiveItem=0..}] run function more_nbt:data/give_item

# Run starting functions
function more_nbt:data/score_bossbar
function more_nbt:data/merge_used_item_scores
function more_nbt:reader_tick

# throwable
execute as @e[tag=MoreNbt] store result score @s x run data get entity @s Pos[0] 60
execute as @e[tag=MoreNbt] store result score @s y run data get entity @s Pos[1] 60
execute as @e[tag=MoreNbt] store result score @s z run data get entity @s Pos[2] 60
execute as @p store result score @s x run data get entity @s Pos[0] 60
execute as @p store result score @s y run data get entity @s Pos[1] 60
execute as @p store result score @s z run data get entity @s Pos[2] 60
scoreboard players operation @e[tag=MoreNbt] x -= @p x
scoreboard players operation @e[tag=MoreNbt] y -= @p y
scoreboard players operation @e[tag=MoreNbt] z -= @p z
    # No physics
execute as @e[tag=MoreNbt,tag=physicsFalse] store result entity @s Motion[0] double 0.004 run scoreboard players get @s x
execute as @e[tag=MoreNbt,tag=physicsFalse] store result entity @s Motion[1] double 0.004 run scoreboard players get @s y
execute as @e[tag=MoreNbt,tag=physicsFalse] store result entity @s Motion[2] double 0.004 run scoreboard players get @s z
    # physics
execute as @e[tag=MoreNbt,tag=physicsTrue] store result entity @s Motion[0] double 0.02 run scoreboard players get @s x
execute as @e[tag=MoreNbt,tag=physicsTrue] store result entity @s Motion[1] double 0.02 run scoreboard players get @s y
execute as @e[tag=MoreNbt,tag=physicsTrue] store result entity @s Motion[2] double 0.02 run scoreboard players get @s z

# Food component
function more_nbt:readers/item/food
execute at @p[nbt=!{SelectedItem:{tag:{moreNBT:{},food:{}}}}] run data remove storage more_nbt:util food
execute at @p[nbt=!{SelectedItem:{tag:{moreNBT:{},food:{}}}}] run scoreboard players set @p is_holding_food 0
# Block Components
function more_nbt:readers/item/copy_block_tag
execute at @p[nbt=!{SelectedItem:{tag:{moreNBT:{},BlockTag:{}}}}] run data remove storage more_nbt:util BlockTag
execute at @p[nbt=!{SelectedItem:{tag:{moreNBT:{},BlockTag:{}}}}] run scoreboard players set @p is_holding_block 0

# kill minecart when you deselect item
execute if entity @e[tag=moreNBT.Inventory] at @p[nbt=!{SelectedItem:{tag:{Inventory:{}}}}] run kill @e[tag=moreNBT.Inventory,distance=..3]
execute if entity @e[tag=INewUI] at @p[nbt=!{SelectedItem:{tag:{new_ui:{}}}}] run kill @e[tag=INewUI,distance=..3]
# hide bossbar when you deselect the item
execute at @p[nbt=!{SelectedItem:{tag:{durability:{display:{type:"bossbar"}}}}}] run bossbar set more_nbt:durability visible false

# Teams
team join IHaveNoCollision @e[tag=moreNBT.Inventory]
team join IHaveNoCollision @e[tag=INewUI]

# Run end functions
function more_nbt:data/item_management
function more_nbt:data/reset_used_scores
function more_nbt:data/reset_util_score