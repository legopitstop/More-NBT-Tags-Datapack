# Desc: Setup for the datapack
#
# Called by: #minecraft:load

# Reload Message
tellraw @a [{"translate":"More NBT has been reloaded"}]
tellraw @a ["",{"text":"Documentation","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value": "https://legopitstop.weebly.com/documentation-morenbt.html"},"hoverEvent":{"action":"show_text","contents": {"text":"Open Documentation"}}}]

# Reset tmp cloud:storage
data modify storage cloud:storage tmp set value {}

# Defualt Config
execute unless data storage more_nbt:config {version: 1} run data merge storage more_nbt:config {version: 1, config: {debugLog:false, on_use_reload: false}}

# apply items to custom storage
data remove storage more_nbt:items items
data modify storage more_nbt:items items[{item:"custom:item"}] merge value {description: "This is a custom example item.",item:"custom:item",material:"minecraft:leather_horse_armor",nbt:{display:{Color:12345}}}

# remove reload command block
execute at @a run fill ~10 ~10 ~10 ~-5 ~-5 ~-5 air replace command_block{Command: "reload", auto: 1b}
execute at @a run fill ~10 ~10 ~10 ~-5 ~-5 ~-5 air replace command_block{Command:"reload confirm",auto:1b}

# Teams, Makes all entities that are on the team to have to collision.
# "moreNBTInventory" will be replaced with "IHaveNoCollision" team.
team add IHaveNoCollision "IHaveNoCollision"
team modify IHaveNoCollision collisionRule never

# current nbt format
scoreboard players set current_nbt_format moreNBT 4
data modify storage more_nbt:global_storage moreNBT.current_nbt_format set value 4

# util storage
data merge storage more_nbt:util {empty: {}, false: 0b, true: 1b,block:{EntityTag:{NoGravity:1b,OnGround:1b,Tags:["CustomBlock"],Marker:1b,Invisible:1b}}}

# util scoreboard. Used for quick storage that needs to be a scoreboard for math.
scoreboard objectives add util dummy
scoreboard players add Count util 0
scoreboard players add Int util 0
scoreboard players set 1 util 1
scoreboard players set 100 util 100
scoreboard players set tmp util 0
scoreboard players set tick util 20

# give Custom item
scoreboard objectives add GiveItem dummy
scoreboard players set @p GiveItem -1

# Item scoreboard
scoreboard objectives add Item dummy
scoreboard players add cooldown Item 0
scoreboard players add times_used Item 0

# Entity Condition Scoreboards
scoreboard objectives add Time dummy
scoreboard players add daytime Time 0
scoreboard players add day Time 0
scoreboard players add gametime Time 0

scoreboard objectives add EntityConditions dummy
scoreboard players add time_check EntityConditions 0
scoreboard players add time_check_min EntityConditions 0
scoreboard players add time_check_max EntityConditions 0
scoreboard objectives add is_sneaking minecraft.custom:sneak_time
scoreboard players add @p is_sneaking 0
scoreboard objectives add is_sprinting minecraft.custom:sprint_one_cm
scoreboard players add @p is_sprinting 0
scoreboard objectives add is_swimming minecraft.custom:swim_one_cm
scoreboard players add @p is_swimming 0
scoreboard objectives add is_sleeping minecraft.custom:minecraft.sleep_in_bed
scoreboard players add @p is_sleeping 0
scoreboard objectives add is_jumping minecraft.custom:jump
scoreboard players add @p is_jumping 0
scoreboard objectives add is_flying minecraft.custom:fly_one_cm
scoreboard players add @p is_flying 0
scoreboard objectives add is_falling minecraft.custom:fall_one_cm
scoreboard players add @p is_falling 0
scoreboard objectives add is_walking minecraft.custom:walk_one_cm
scoreboard players add @p is_walking 0
scoreboard objectives add is_climbing minecraft.custom:climb_one_cm
scoreboard players add @p is_climbing 0

# Other scoreboards
scoreboard objectives add moreNBT dummy
scoreboard players add format_check moreNBT 0

scoreboard objectives add is_holding_food dummy
scoreboard players add @p is_holding_food 0

scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy

# used scores
scoreboard objectives add used.item0 minecraft.used:minecraft.armor_stand

scoreboard objectives add used.tool0 minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add used.tool1 minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add used.tool2 minecraft.used:minecraft.bow
scoreboard objectives add used.tool3 minecraft.used:minecraft.crossbow
scoreboard objectives add used.tool4 minecraft.used:minecraft.trident
scoreboard objectives add used.sword0 minecraft.used:minecraft.wooden_sword
scoreboard objectives add used.sword1 minecraft.used:minecraft.stone_sword
scoreboard objectives add used.sword2 minecraft.used:minecraft.golden_sword
scoreboard objectives add used.sword3 minecraft.used:minecraft.iron_sword
scoreboard objectives add used.sword4 minecraft.used:minecraft.diamond_sword
scoreboard objectives add used.sword5 minecraft.used:minecraft.netherite_sword
scoreboard objectives add used.shovel0 minecraft.used:minecraft.wooden_shovel
scoreboard objectives add used.shovel1 minecraft.used:minecraft.stone_shovel
scoreboard objectives add used.shovel2 minecraft.used:minecraft.golden_shovel
scoreboard objectives add used.shovel3 minecraft.used:minecraft.iron_shovel
scoreboard objectives add used.shovel4 minecraft.used:minecraft.diamond_shovel
scoreboard objectives add used.shovel5 minecraft.used:minecraft.netherite_shovel
scoreboard objectives add used.pickaxe0 minecraft.used:minecraft.wooden_pickaxe
scoreboard objectives add used.pickaxe1 minecraft.used:minecraft.stone_pickaxe
scoreboard objectives add used.pickaxe2 minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add used.pickaxe3 minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add used.pickaxe4 minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add used.pickaxe5 minecraft.used:minecraft.netherite_pickaxe
scoreboard objectives add used.axe0 minecraft.used:minecraft.wooden_axe
scoreboard objectives add used.axe1 minecraft.used:minecraft.stone_axe
scoreboard objectives add used.axe2 minecraft.used:minecraft.golden_axe
scoreboard objectives add used.axe3 minecraft.used:minecraft.iron_axe
scoreboard objectives add used.axe4 minecraft.used:minecraft.diamond_axe
scoreboard objectives add used.axe5 minecraft.used:minecraft.netherite_axe
scoreboard objectives add used.hoe0 minecraft.used:minecraft.wooden_hoe
scoreboard objectives add used.hoe1 minecraft.used:minecraft.stone_hoe
scoreboard objectives add used.hoe2 minecraft.used:minecraft.golden_hoe
scoreboard objectives add used.hoe3 minecraft.used:minecraft.iron_hoe
scoreboard objectives add used.hoe4 minecraft.used:minecraft.diamond_hoe
scoreboard objectives add used.hoe5 minecraft.used:minecraft.netherite_hoe

# used food scores
scoreboard objectives add used.food00 minecraft.used:minecraft.apple
scoreboard objectives add used.food01 minecraft.used:minecraft.mushroom_stew
scoreboard objectives add used.food02 minecraft.used:minecraft.bread
scoreboard objectives add used.food03 minecraft.used:minecraft.porkchop
scoreboard objectives add used.food04 minecraft.used:minecraft.cooked_porkchop
scoreboard objectives add used.food05 minecraft.used:minecraft.golden_apple
scoreboard objectives add used.food06 minecraft.used:minecraft.enchanted_golden_apple
scoreboard objectives add used.food07 minecraft.used:minecraft.cod
scoreboard objectives add used.food08 minecraft.used:minecraft.salmon
scoreboard objectives add used.food09 minecraft.used:minecraft.cookie
scoreboard objectives add used.food10 minecraft.used:minecraft.melon_slice
scoreboard objectives add used.food11 minecraft.used:minecraft.dried_kelp
scoreboard objectives add used.food12 minecraft.used:minecraft.beef
scoreboard objectives add used.food13 minecraft.used:minecraft.cooked_beef
scoreboard objectives add used.food14 minecraft.used:minecraft.chicken
scoreboard objectives add used.food15 minecraft.used:minecraft.cooked_chicken
scoreboard objectives add used.food16 minecraft.used:minecraft.rotten_flesh
scoreboard objectives add used.food17 minecraft.used:minecraft.spider_eye
scoreboard objectives add used.food18 minecraft.used:minecraft.carrot
scoreboard objectives add used.food19 minecraft.used:minecraft.potato
scoreboard objectives add used.food20 minecraft.used:minecraft.baked_potato
scoreboard objectives add used.food21 minecraft.used:minecraft.poisonous_potato
scoreboard objectives add used.food22 minecraft.used:minecraft.pumpkin_pie
scoreboard objectives add used.food23 minecraft.used:minecraft.rabbit
scoreboard objectives add used.food24 minecraft.used:minecraft.cooked_rabbit
scoreboard objectives add used.food25 minecraft.used:minecraft.rabbit_stew
scoreboard objectives add used.food26 minecraft.used:minecraft.mutton
scoreboard objectives add used.food27 minecraft.used:minecraft.cooked_mutton
scoreboard objectives add used.food28 minecraft.used:minecraft.beetroot
scoreboard objectives add used.food29 minecraft.used:minecraft.beetroot_soup
scoreboard objectives add used.food30 minecraft.used:minecraft.sweet_berries
scoreboard objectives add used.food31 minecraft.used:minecraft.glow_berries
scoreboard objectives add used.food32 minecraft.used:minecraft.honey_bottle
scoreboard objectives add used.food33 minecraft.used:minecraft.potion
scoreboard objectives add used.food34 minecraft.used:minecraft.glistering_melon_slice
scoreboard objectives add used.food35 minecraft.used:minecraft.golden_carrot

scoreboard objectives add used.item dummy
scoreboard objectives add used.tool dummy
scoreboard objectives add used.sword dummy
scoreboard objectives add used.shovel dummy
scoreboard objectives add used.pickaxe dummy
scoreboard objectives add used.axe dummy
scoreboard objectives add used.hoe dummy

scoreboard objectives add used.food dummy
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