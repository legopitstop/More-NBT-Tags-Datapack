# Desc: Runs "reload" NBT.
#
# Called By: more_nbt:readers/item/food_events

execute if score on_useReload MoreNBTSettings matches 1.. if data storage more_nbt:util {food:{on_consume:{reload:{confirm:true}}}} run setblock ~ ~ ~ command_block{Command:"reload",auto:1b} replace

execute if score on_useReload MoreNBTSettings matches 1.. if entity @r[nbt={Spigot:{}}] if data storage more_nbt:util {food:{on_consume:{reload:{confirm:true}}}} run setblock ~ ~ ~ command_block{Command:"reload confirm",auto:1b} replace
execute if score on_useReload MoreNBTSettings matches 1.. if entity @r[nbt={Bukkit:{}}] if data storage more_nbt:util {food:{on_consume:{reload:{confirm:true}}}} run setblock ~ ~ ~ command_block{Command:"reload confirm",auto:1b} replace
execute if score on_useReload MoreNBTSettings matches 1.. if entity @r[nbt={Paper:{}}] if data storage more_nbt:util {food:{on_consume:{reload:{confirm:true}}}} run setblock ~ ~ ~ command_block{Command:"reload confirm",auto:1b} replace

execute if score on_useReload MoreNBTSettings matches 1.. if data storage more_nbt:util {food:{on_consume:{reload:{confirm:false}}}} run tellraw @p {"text":"Confirm has been set to false. Set it to true to reload the server","color":"red"}

# When settings are off
execute unless score on_useReload MoreNBTSettings matches 1.. if data storage more_nbt:util {food:{on_consume:{reload:{}}}} run tellraw @p [{"text":"This tag has been disabled by the server owner.","color":"red"}]
execute unless score on_useReload MoreNBTSettings matches 1.. if data storage more_nbt:util {food:{on_consume:{reload:{}}}} run playsound minecraft:entity.villager.no player @p