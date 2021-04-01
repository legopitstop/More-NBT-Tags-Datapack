# Desc: runs all files (looping)
#
# Called by: #minecraft:tick

function more_nbt:data/score_bossbar

# copy onUse<ITEM> to used_item score
execute if score @p used.carrotStick matches 1.. run scoreboard players operation @p used.item = @p used.carrotStick
execute if score @p used.warpedStick matches 1.. run scoreboard players operation @p used.item = @p used.warpedStick
execute if score @p used.woodenSword matches 1.. run scoreboard players operation @p used.item = @p used.woodenSword
execute if score @p used.stoneSword matches 1.. run scoreboard players operation @p used.item = @p used.stoneSword
execute if score @p used.ironSword matches 1.. run scoreboard players operation @p used.item = @p used.ironSword
execute if score @p used.goldenSword matches 1.. run scoreboard players operation @p used.item = @p used.goldenSword
execute if score @p used.diamSword matches 1.. run scoreboard players operation @p used.item = @p used.diamSword
execute if score @p used.netherSword matches 1.. run scoreboard players operation @p used.item = @p used.netherSword
execute if score @p used.woodShovel matches 1.. run scoreboard players operation @p used.item = @p used.woodShovel
execute if score @p used.stoneShovel matches 1.. run scoreboard players operation @p used.item = @p used.stoneShovel
execute if score @p used.ironShovel matches 1.. run scoreboard players operation @p used.item = @p used.ironShovel
execute if score @p used.goldShovel matches 1.. run scoreboard players operation @p used.item = @p used.goldShovel
execute if score @p used.diamShovel matches 1.. run scoreboard players operation @p used.item = @p used.diamShovel
execute if score @p used.nethrShovel matches 1.. run scoreboard players operation @p used.item = @p used.nethrShovel
execute if score @p used.woodenPick matches 1.. run scoreboard players operation @p used.item = @p used.woodenPick
execute if score @p used.stonePick matches 1.. run scoreboard players operation @p used.item = @p used.stonePick
execute if score @p used.ironPick matches 1.. run scoreboard players operation @p used.item = @p used.ironPick
execute if score @p used.goldenPick matches 1.. run scoreboard players operation @p used.item = @p used.goldenPick
execute if score @p used.diamondPick matches 1.. run scoreboard players operation @p used.item = @p used.diamondPick
execute if score @p used.netherPick matches 1.. run scoreboard players operation @p used.item = @p used.netherPick
execute if score @p used.woodenAxe matches 1.. run scoreboard players operation @p used.item = @p used.woodenAxe
execute if score @p used.stoneAxe matches 1.. run scoreboard players operation @p used.item = @p used.stoneAxe
execute if score @p used.ironAxe matches 1.. run scoreboard players operation @p used.item = @p used.ironAxe
execute if score @p used.goldenAxe matches 1.. run scoreboard players operation @p used.item = @p used.goldenAxe
execute if score @p used.diamondAxe matches 1.. run scoreboard players operation @p used.item = @p used.diamondAxe
execute if score @p used.netherAxe matches 1.. run scoreboard players operation @p used.item = @p used.netherAxe
execute if score @p used.woodenHoe matches 1.. run scoreboard players operation @p used.item = @p used.woodenHoe
execute if score @p used.stoneHoe matches 1.. run scoreboard players operation @p used.item = @p used.stoneHoe
execute if score @p used.ironHoe matches 1.. run scoreboard players operation @p used.item = @p used.ironHoe
execute if score @p used.goldenHoe matches 1.. run scoreboard players operation @p used.item = @p used.goldenHoe
execute if score @p used.diamondHoe matches 1.. run scoreboard players operation @p used.item = @p used.diamondHoe
execute if score @p used.netherHoe matches 1.. run scoreboard players operation @p used.item = @p used.netherHoe
execute if score @p used.bow matches 1.. run scoreboard players operation @p used.item = @p used.bow
execute if score @p used.crossbow matches 1.. run scoreboard players operation @p used.item = @p used.crossbow
execute if score @p used.trident matches 1.. run scoreboard players operation @p used.item = @p used.trident

# run reader
function more_nbt:reader_tick

#/execute as @p at @s run summon snowball ^ ^0.14 ^1 {Tags:["toMove"]}
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


# kill minecart when you deselect item
execute if entity @e[tag=moreNBT.Inventory] at @p[nbt=!{SelectedItem:{tag:{Inventory:{}}}}] run kill @e[tag=moreNBT.Inventory,distance=..3]
execute if entity @e[tag=INewUI] at @p[nbt=!{SelectedItem:{tag:{new_ui:{}}}}] run kill @e[tag=INewUI,distance=..3]
# hide bossbar when you deselect the item
execute at @p[nbt=!{SelectedItem:{tag:{durability:{display:{type:"bossbar"}}}}}] run bossbar set more_nbt:durability visible false

# Teams
team join IHaveNoCollision @e[tag=moreNBT.Inventory]
team join IHaveNoCollision @e[tag=INewUI]

# Item management tags: "NoGroundItem" && "NoInventoryItem"
function more_nbt:data/item_management

# reset 'used' scoreboards
scoreboard players set @p[scores={used.carrotStick=1..}] used.carrotStick 0
scoreboard players set @p[scores={used.warpedStick=1..}] used.warpedStick 0
scoreboard players set @p[scores={used.woodenSword=1..}] used.woodenSword 0
scoreboard players set @p[scores={used.stoneSword=1..}] used.stoneSword 0
scoreboard players set @p[scores={used.ironSword=1..}] used.ironSword 0
scoreboard players set @p[scores={used.goldenSword=1..}] used.goldenSword 0
scoreboard players set @p[scores={used.diamSword=1..}] used.diamSword 0
scoreboard players set @p[scores={used.netherSword=1..}] used.netherSword 0
scoreboard players set @p[scores={used.woodenPick=1..}] used.woodenPick 0
scoreboard players set @p[scores={used.stonePick=1..}] used.stonePick 0
scoreboard players set @p[scores={used.ironPick=1..}] used.ironPick 0
scoreboard players set @p[scores={used.goldenPick=1..}] used.goldenPick 0
scoreboard players set @p[scores={used.diamondPick=1..}] used.diamondPick 0
scoreboard players set @p[scores={used.netherPick=1..}] used.netherPick 0
scoreboard players set @p[scores={used.woodenAxe=1..}] used.woodenAxe 0
scoreboard players set @p[scores={used.stoneAxe=1..}] used.stoneAxe 0
scoreboard players set @p[scores={used.ironAxe=1..}] used.ironAxe 0
scoreboard players set @p[scores={used.goldenAxe=1..}] used.goldenAxe 0
scoreboard players set @p[scores={used.diamondAxe=1..}] used.diamondAxe 0
scoreboard players set @p[scores={used.netherAxe=1..}] used.netherAxe 0
scoreboard players set @p[scores={used.woodenHoe=1..}] used.woodenHoe 0
scoreboard players set @p[scores={used.stoneHoe=1..}] used.stoneHoe 0
scoreboard players set @p[scores={used.ironHoe=1..}] used.ironHoe 0
scoreboard players set @p[scores={used.goldenHoe=1..}] used.goldenHoe 0
scoreboard players set @p[scores={used.diamondHoe=1..}] used.diamondHoe 0
scoreboard players set @p[scores={used.netherHoe=1..}] used.netherHoe 0
scoreboard players set @p[scores={used.woodShovel=1..}] used.woodShovel 0
scoreboard players set @p[scores={used.stoneShovel=1..}] used.stoneShovel 0
scoreboard players set @p[scores={used.ironShovel=1..}] used.ironShovel 0
scoreboard players set @p[scores={used.goldShovel=1..}] used.goldShovel 0
scoreboard players set @p[scores={used.diamShovel=1..}] used.diamShovel 0
scoreboard players set @p[scores={used.nethrShovel=1..}] used.nethrShovel 0
scoreboard players set @p[scores={used.bow=1..}] used.bow 0
scoreboard players set @p[scores={used.crossbow=1..}] used.crossbow 0
scoreboard players set @p[scores={used.trident=1..}] used.trident 0
scoreboard players set @p[scores={used.item=1..}] used.item 0