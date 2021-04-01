# Desc: Setup for the datapack
#
# Called by: #minecraft:load

# Reload Message
tellraw @a [{"translate":"More NBT has been reloaded"}]
tellraw @a ["",{"text":"Documentation","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value": "https://legopitstop.weebly.com/documentation-morenbt.html"},"hoverEvent":{"action":"show_text","contents": {"text":"Open Documentation"}}}]

# Reset tmp cloud:storage
data modify storage cloud:storage tmp set value {}

# remove reload command block
execute at @a run fill ~10 ~10 ~10 ~-5 ~-5 ~-5 air replace command_block{Command:"reload",auto:1b}
execute at @a run fill ~10 ~10 ~10 ~-5 ~-5 ~-5 air replace command_block{Command:"reload confirm",auto:1b}

# Teams, Makes all entities that are on the team to have to collision.
# "moreNBTInventory" will be replaced with "IHaveNoCollision" team.
team add IHaveNoCollision "IHaveNoCollision"
team modify IHaveNoCollision collisionRule never

# current nbt format
scoreboard players set current_nbt_format moreNBT 3
data modify storage more_nbt:global_storage moreNBT.current_nbt_format set value 3

# settings scoreboard
scoreboard objectives add MoreNBTSettings dummy
execute unless score onUseReload MoreNBTSettings matches 0 run scoreboard players set onUseReload MoreNBTSettings 1

# util scoreboard. Used for quick storage that needs to be a scoreboard for math.
scoreboard objectives add util dummy
scoreboard players add Count util 0
scoreboard players add Int util 0
scoreboard players set 1 util 1
scoreboard players set 100 util 100
scoreboard players set tmp util 0

# Other scoreboards
scoreboard objectives add moreNBT dummy
scoreboard players add format_check moreNBT 0

scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy

scoreboard objectives add used.carrotStick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add used.warpedStick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add used.woodenSword minecraft.used:minecraft.wooden_sword
scoreboard objectives add used.stoneSword minecraft.used:minecraft.stone_sword
scoreboard objectives add used.goldenSword minecraft.used:minecraft.golden_sword
scoreboard objectives add used.ironSword minecraft.used:minecraft.iron_sword
scoreboard objectives add used.diamSword minecraft.used:minecraft.diamond_sword
scoreboard objectives add used.netherSword minecraft.used:minecraft.netherite_sword
scoreboard objectives add used.woodShovel minecraft.used:minecraft.wooden_shovel
scoreboard objectives add used.stoneShovel minecraft.used:minecraft.stone_shovel
scoreboard objectives add used.goldShovel minecraft.used:minecraft.golden_shovel
scoreboard objectives add used.ironShovel minecraft.used:minecraft.iron_shovel
scoreboard objectives add used.diamShovel minecraft.used:minecraft.diamond_shovel
scoreboard objectives add used.nethrShovel minecraft.used:minecraft.netherite_shovel
scoreboard objectives add used.woodenPick minecraft.used:minecraft.wooden_pickaxe
scoreboard objectives add used.stonePick minecraft.used:minecraft.stone_pickaxe
scoreboard objectives add used.goldenPick minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add used.ironPick minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add used.diamondPick minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add used.netherPick minecraft.used:minecraft.netherite_pickaxe
scoreboard objectives add used.woodenAxe minecraft.used:minecraft.wooden_axe
scoreboard objectives add used.stoneAxe minecraft.used:minecraft.stone_axe
scoreboard objectives add used.goldenAxe minecraft.used:minecraft.golden_axe
scoreboard objectives add used.ironAxe minecraft.used:minecraft.iron_axe
scoreboard objectives add used.diamondAxe minecraft.used:minecraft.diamond_axe
scoreboard objectives add used.netherAxe minecraft.used:minecraft.netherite_axe
scoreboard objectives add used.woodenHoe minecraft.used:minecraft.wooden_hoe
scoreboard objectives add used.stoneHoe minecraft.used:minecraft.stone_hoe
scoreboard objectives add used.goldenHoe minecraft.used:minecraft.golden_hoe
scoreboard objectives add used.ironHoe minecraft.used:minecraft.iron_hoe
scoreboard objectives add used.diamondHoe minecraft.used:minecraft.diamond_hoe
scoreboard objectives add used.netherHoe minecraft.used:minecraft.netherite_hoe
scoreboard objectives add used.bow minecraft.used:minecraft.bow
scoreboard objectives add used.crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add used.trident minecraft.used:minecraft.trident

scoreboard objectives add used.item dummy
scoreboard objectives add CustomModelData dummy

scoreboard objectives add onUse.random dummy
scoreboard players add min onUse.random 0
scoreboard players add max onUse.random 0
scoreboard players add result onUse.random 0
# test scoreboard (may store inside item like random tag)
scoreboard objectives add onUse.score0 dummy
scoreboard objectives add onUse.score1 dummy
scoreboard objectives add onUse.score2 dummy
scoreboard objectives add onUse.score3 dummy
scoreboard objectives add onUse.score4 dummy
scoreboard objectives add onUse.score5 dummy
scoreboard objectives add onUse.score6 dummy
scoreboard objectives add onUse.score7 dummy
scoreboard objectives add onUse.score8 dummy
scoreboard objectives add onUse.score9 dummy
# test scoreboard (may store inside item like random tag)
scoreboard objectives add score.test0 dummy
scoreboard objectives add score.test1 dummy
scoreboard objectives add score.test2 dummy
scoreboard objectives add score.test3 dummy
scoreboard objectives add score.test4 dummy
scoreboard objectives add score.test5 dummy
scoreboard objectives add score.test6 dummy
scoreboard objectives add score.test7 dummy
scoreboard objectives add score.test8 dummy
scoreboard objectives add score.test9 dummy

scoreboard objectives add animatedModels dummy
scoreboard players add frametick animatedModels 0
scoreboard players add frametime animatedModels 0
scoreboard players add run animatedModels 0
scoreboard objectives add frameCount dummy

scoreboard objectives add Damage dummy
scoreboard objectives add Damage.Deal dummy
# item durability scoreboards
scoreboard objectives add max_durability dummy
scoreboard objectives add durability dummy
scoreboard objectives add durabilityPer dummy

# durability bossbar
bossbar add more_nbt:durability "Durability"
bossbar set more_nbt:durability color white
bossbar set more_nbt:durability players @p

scoreboard objectives add bossbar dummy
scoreboard players add durability bossbar 0

scoreboard objectives add actionbarBar dummy
scoreboard players add durability actionbarBar 0