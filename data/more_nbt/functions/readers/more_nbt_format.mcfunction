# Desc: Runs "more_nbt_format" NBT.
#
# Called By: more_nbt:reader_tick

# currnet nbt_format:1

# place nbt_format in score
execute unless entity @p[nbt={SelectedItem:{tag:{moreNBT:{nbt_format:"IgnoreFormatOverride"}}}}] unless entity @p[nbt={SelectedItem:{tag:{moreNBT:{checked:1b}}}}] store result score format_check moreNBT run data get entity @p SelectedItem.tag.moreNBT.nbt_format

execute unless entity @p[nbt={SelectedItem:{tag:{moreNBT:{nbt_format:"IgnoreFormatOverride"}}}}] unless entity @p[nbt={SelectedItem:{tag:{moreNBT:{checked:1b}}}}] if score format_check moreNBT > current_nbt_format moreNBT run tellraw @p ["",{"text":"(This item uses a newer format.) ","color":"gray"},{"translate":"nbt_format:%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.moreNBT.nbt_format"}]}]
execute unless entity @p[nbt={SelectedItem:{tag:{moreNBT:{nbt_format:"IgnoreFormatOverride"}}}}] unless entity @p[nbt={SelectedItem:{tag:{moreNBT:{checked:1b}}}}] if score format_check moreNBT < current_nbt_format moreNBT run tellraw @p ["",{"text":"(This item uses a older format.) ","color":"gray"},{"translate":"nbt_format:%s","with":[{"entity":"@p","nbt":"SelectedItem.tag.moreNBT.nbt_format"}]}]

# add checked:1b so it doenst spam/loop
data merge storage more_nbt:global_storage {moreNBT:{checked:1b}}
item entity @p weapon.mainhand modify more_nbt:format_checked

# reset
scoreboard players set format_check moreNBT 0