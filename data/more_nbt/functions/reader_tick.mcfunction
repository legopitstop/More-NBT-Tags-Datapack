# Desc: runs all reader files (looping)
#
# Called by: more_nbt:main_tick

# DebugLog
execute if data storage more_nbt:config {config:{debugLog:1b}} at @p[nbt={SelectedItem:{tag:{}}}] run function more_nbt:readers/item/debug_log

# Item BlockTags custom block
function more_nbt:readers/item/block_tag

# ITEM READER
## Item Stats
execute if score cooldown Item matches 0 at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},on_use:{}}}}] run function more_nbt:readers/stats/used_tags
execute at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},on_use_on:{}}}}] anchored eyes unless block ^ ^ ^5 #more_nbt:on_use_on_whitelist run function more_nbt:readers/stats/used_on_tags
execute at @p[nbt={SelectedItem:{tag:{moreNBT:{},on_hold:{}}}}] run function more_nbt:readers/stats/held_tags
## more_nbt_format
execute at @p[nbt={SelectedItem:{tag:{moreNBT:{}}}}] run function more_nbt:readers/more_nbt_format
## Item event trigger readers
execute if score cooldown Item matches 0 at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},on_use:{}}}}] run function more_nbt:readers/event_triggers/item/on_use
execute at @p[nbt={SelectedItem:{tag:{moreNBT:{},on_hold:{}}}}] run function more_nbt:readers/event_triggers/item/on_hold
execute at @p[scores={used.item=1..},nbt={SelectedItem:{tag:{moreNBT:{},on_use_on:{}}}}] anchored eyes unless block ^ ^ ^5 #more_nbt:on_use_on_whitelist run function more_nbt:readers/event_triggers/item/on_use_on
## Run other item readers
execute at @p[nbt={SelectedItem:{tag:{moreNBT:{}}}}] run function more_nbt:readers/direct
execute at @p[nbt={SelectedItem:{tag:{}}}] run function more_nbt:readers/custom

# ENTITY READER
function more_nbt:readers/entity

# Simple Tags
## NoMotion: 1b
data modify entity @e[type=item,limit=1,nbt={Item:{tag:{moreNBT:{},NoMotion:1b}}},nbt=!{Motion:[0.0d,0.0d,0.0d]}] Motion set value [0.0d,0.0d,0.0d]
## NoGravity: 1b
data modify entity @e[type=item,limit=1,nbt={Item:{tag:{moreNBT:{},NoGravity:1b}}},nbt=!{NoGravity:1b}] NoGravity set value 1b
## Invulnerable: 1b
data modify entity @e[type=item,limit=1,nbt={Item:{tag:{moreNBT:{},Invulnerable:1b}}},nbt=!{Invulnerable:1b}] Health set value 1000
data modify entity @e[type=item,limit=1,nbt={Item:{tag:{moreNBT:{},Invulnerable:1b}}},nbt=!{Invulnerable:1b}] Invulnerable set value 1b