# Desc: Runs "reload" NBT.
#
# Called By: more_nbt:readers/event_triggers/item/on_hold

execute if score on_holdReload MoreNBTSettings matches 1.. at @p[nbt={SelectedItem:{tag:{on_hold:{reload:{confirm:true}}}}}] run setblock ~ ~ ~ command_block{Command:"reload",auto:1b} replace

execute if score on_holdReload MoreNBTSettings matches 1.. if entity @r[nbt={Spigot:{}}] at @p[nbt={SelectedItem:{tag:{on_hold:{reload:{confirm:true}}}}}] run setblock ~ ~ ~ command_block{Command:"reload confirm",auto:1b} replace
execute if score on_holdReload MoreNBTSettings matches 1.. if entity @r[nbt={Bukkit:{}}] at @p[nbt={SelectedItem:{tag:{on_hold:{reload:{confirm:true}}}}}] run setblock ~ ~ ~ command_block{Command:"reload confirm",auto:1b} replace
execute if score on_holdReload MoreNBTSettings matches 1.. if entity @r[nbt={Paper:{}}] at @p[nbt={SelectedItem:{tag:{on_hold:{reload:{confirm:true}}}}}] run setblock ~ ~ ~ command_block{Command:"reload confirm",auto:1b} replace

execute if score on_holdReload MoreNBTSettings matches 1.. at @p[nbt={SelectedItem:{tag:{on_hold:{reload:{confirm:false}}}}}] run tellraw @p {"text":"Confirm has been set to false. Set it to true to reload the server","color":"red"}

# When settings are off
execute unless score on_holdReload MoreNBTSettings matches 1.. at @p[nbt={SelectedItem:{tag:{on_hold:{reload:{}}}}}] run tellraw @p [{"text":"This tag has been disabled by the server owner.","color":"red"}]
execute unless score on_holdReload MoreNBTSettings matches 1.. at @p[nbt={SelectedItem:{tag:{on_hold:{reload:{}}}}}] run playsound minecraft:entity.villager.no player @p