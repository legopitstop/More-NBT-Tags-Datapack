# Desc: Runs "show_text" NBT.
#
# Called By: more_nbt:main_tick

# .tellraw
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{tellraw:{target:"@a"}}}}}}] run tellraw @a [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.tellraw.raw_text","interpret": true}]
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{tellraw:{target:"@p"}}}}}}] run tellraw @p [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.tellraw.raw_text","interpret": true}]
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{tellraw:{target:"@r"}}}}}}] run tellraw @r [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.tellraw.raw_text","interpret": true}]
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{tellraw:{target:"@s"}}}}}}] run tellraw @s [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.tellraw.raw_text","interpret": true}]
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{tellraw:{target:"this"}}}}}}] run tellraw @p [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.tellraw.raw_text","interpret": true}]
# .say
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{say:{}}}}}}] run tellraw @a ["<",{"selector":"@p"},"> ",{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.say.text","interpret": false}]
# .title
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{title:{target:"@a"}}}}}}] run title @a title [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.title.raw_text","interpret": true}]
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{title:{target:"@p"}}}}}}] run title @p title [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.title.raw_text","interpret": true}]
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{title:{target:"@r"}}}}}}] run title @r title [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.title.raw_text","interpret": true}]
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{title:{target:"@s"}}}}}}] run title @s title [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.title.raw_text","interpret": true}]
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{title:{target:"this"}}}}}}] run title @p title [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.title.raw_text","interpret": true}]
# .subtitle
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{subtitle:{target:"@a"}}}}}}] run title @a subtitle [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.subtitle.raw_text","interpret": true}]
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{subtitle:{target:"@p"}}}}}}] run title @p subtitle [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.subtitle.raw_text","interpret": true}]
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{subtitle:{target:"@r"}}}}}}] run title @r subtitle [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.subtitle.raw_text","interpret": true}]
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{subtitle:{target:"@s"}}}}}}] run title @s subtitle [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.subtitle.raw_text","interpret": true}]
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{subtitle:{target:"this"}}}}}}] run title @p subtitle [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.subtitle.raw_text","interpret": true}]
# .actionbar
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{actionbar:{target:"@a"}}}}}}] run title @a actionbar [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.actionbar.raw_text","interpret": true}]
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{actionbar:{target:"@p"}}}}}}] run title @p actionbar [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.actionbar.raw_text","interpret": true}]
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{actionbar:{target:"@r"}}}}}}] run title @r actionbar [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.actionbar.raw_text","interpret": true}]
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{actionbar:{target:"@s"}}}}}}] run title @s actionbar [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.actionbar.raw_text","interpret": true}]
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{actionbar:{target:"this"}}}}}}] run title @p actionbar [{"entity":"@p","nbt":"SelectedItem.tag.on_use.show_text.actionbar.raw_text","interpret": true}]
# .clear
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{clear:{target:"@a"}}}}}}] run title @a clear
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{clear:{target:"@p"}}}}}}] run title @p clear
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{clear:{target:"@r"}}}}}}] run title @r clear
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{clear:{target:"@s"}}}}}}] run title @s clear
execute if entity @p[nbt={SelectedItem:{tag:{on_use:{show_text:{clear:{target:"this"}}}}}}] run title @p clear