# Desc: Reads storage `minecraft:entity`
#
# Called By: more_nbt:reader_tick

# Run entity debugLog
execute if data storage more_nbt:config {config:{debugLog:1b}} if data storage minecraft:entity entity.player.triggers run function #more_nbt:readers/entity/debug_log

# Copy time_check values from storage to score.
execute unless data storage minecraft:entity entity.player.triggers[{debug:true,conditions:[{condition:"minecraft:time_check",value:{}}]}] store result score time_check EntityConditions run data get storage minecraft:entity entity.player.triggers[].conditions[].value
execute if data storage minecraft:entity entity.player.triggers[{debug:true,conditions:[{condition:"minecraft:time_check",value:{}}]}] store result score time_check_min EntityConditions run data get storage minecraft:entity entity.player.triggers[].conditions[].value.min
execute if data storage minecraft:entity entity.player.triggers[{debug:true,conditions:[{condition:"minecraft:time_check",value:{}}]}] store result score time_check_max EntityConditions run data get storage minecraft:entity entity.player.triggers[].conditions[].value.max

# run custom conditions
# Disabled, may remove.
#function more_nbt:readers/entity/custom_conditions

# player
execute if data storage minecraft:entity entity.player.triggers[{type:"minecraft:item_in_inventory"}] run function more_nbt:readers/entity/item_in_inventory
execute if data storage minecraft:entity entity.player.triggers[{type:"minecraft:holding_item"}] run function more_nbt:readers/entity/holding_item
execute if data storage minecraft:entity entity.player.triggers[{type:"minecraft:walk_on_block"}] run function more_nbt:readers/entity/walk_on_block
execute if data storage minecraft:entity entity.player.triggers[{type:"minecraft:near_entity"}] run function more_nbt:readers/entity/near_entity

execute if data storage minecraft:entity entity.player.triggers[{type:"minecraft:condition"}] run function more_nbt:readers/entity/condition

# reset condition scores
scoreboard players reset time_check EntityConditions
scoreboard players reset time_check_min EntityConditions
scoreboard players reset time_check_max EntityConditions
scoreboard players reset @p is_sleeping
scoreboard players reset @p is_sneaking
scoreboard players reset @p is_jumping
scoreboard players reset @p is_sprinting
scoreboard players reset @p is_flying
scoreboard players reset @p is_falling
scoreboard players reset @p is_swimming
scoreboard players reset @p is_walking
scoreboard players reset @p is_climbing