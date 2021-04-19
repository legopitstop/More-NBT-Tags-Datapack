# Desc: Runs "show_text" NBT.
#
# Called By: more_nbt:readers/item/food_events

# .tellraw
execute if data storage more_nbt:util {food:{on_consume:{show_text:{tellraw:{target:"@a"}}}}} run tellraw @a [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.tellraw.raw_text","interpret": true}]
execute if data storage more_nbt:util {food:{on_consume:{show_text:{tellraw:{target:"@p"}}}}} run tellraw @p [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.tellraw.raw_text","interpret": true}]
execute if data storage more_nbt:util {food:{on_consume:{show_text:{tellraw:{target:"@r"}}}}} run tellraw @r [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.tellraw.raw_text","interpret": true}]
execute if data storage more_nbt:util {food:{on_consume:{show_text:{tellraw:{target:"@s"}}}}} run tellraw @s [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.tellraw.raw_text","interpret": true}]
execute if data storage more_nbt:util {food:{on_consume:{show_text:{tellraw:{target:"this"}}}}} run tellraw @p [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.tellraw.raw_text","interpret": true}]
# .say
execute if data storage more_nbt:util {food:{on_consume:{show_text:{say:{}}}}} run tellraw @a ["<",{"selector":"@p"},"> ",{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.say.text","interpret": false}]
# .title
execute if data storage more_nbt:util {food:{on_consume:{show_text:{title:{target:"@a"}}}}} run title @a title [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.title.raw_text","interpret": true}]
execute if data storage more_nbt:util {food:{on_consume:{show_text:{title:{target:"@p"}}}}} run title @p title [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.title.raw_text","interpret": true}]
execute if data storage more_nbt:util {food:{on_consume:{show_text:{title:{target:"@r"}}}}} run title @r title [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.title.raw_text","interpret": true}]
execute if data storage more_nbt:util {food:{on_consume:{show_text:{title:{target:"@s"}}}}} run title @s title [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.title.raw_text","interpret": true}]
execute if data storage more_nbt:util {food:{on_consume:{show_text:{title:{target:"this"}}}}} run title @p title [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.title.raw_text","interpret": true}]
# .subtitle
execute if data storage more_nbt:util {food:{on_consume:{show_text:{subtitle:{target:"@a"}}}}} run title @a subtitle [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.subtitle.raw_text","interpret": true}]
execute if data storage more_nbt:util {food:{on_consume:{show_text:{subtitle:{target:"@p"}}}}} run title @p subtitle [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.subtitle.raw_text","interpret": true}]
execute if data storage more_nbt:util {food:{on_consume:{show_text:{subtitle:{target:"@r"}}}}} run title @r subtitle [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.subtitle.raw_text","interpret": true}]
execute if data storage more_nbt:util {food:{on_consume:{show_text:{subtitle:{target:"@s"}}}}} run title @s subtitle [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.subtitle.raw_text","interpret": true}]
execute if data storage more_nbt:util {food:{on_consume:{show_text:{subtitle:{target:"this"}}}}} run title @p subtitle [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.subtitle.raw_text","interpret": true}]
# .actionbar
execute if data storage more_nbt:util {food:{on_consume:{show_text:{actionbar:{target:"@a"}}}}} run title @a actionbar [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.actionbar.raw_text","interpret": true}]
execute if data storage more_nbt:util {food:{on_consume:{show_text:{actionbar:{target:"@p"}}}}} run title @p actionbar [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.actionbar.raw_text","interpret": true}]
execute if data storage more_nbt:util {food:{on_consume:{show_text:{actionbar:{target:"@r"}}}}} run title @r actionbar [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.actionbar.raw_text","interpret": true}]
execute if data storage more_nbt:util {food:{on_consume:{show_text:{actionbar:{target:"@s"}}}}} run title @s actionbar [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.actionbar.raw_text","interpret": true}]
execute if data storage more_nbt:util {food:{on_consume:{show_text:{actionbar:{target:"this"}}}}} run title @p actionbar [{"storage":"more_nbt:util","nbt":"food.on_consume.show_text.actionbar.raw_text","interpret": true}]
# .clear
execute if data storage more_nbt:util {food:{on_consume:{show_text:{clear:{target:"@a"}}}}} run title @a clear
execute if data storage more_nbt:util {food:{on_consume:{show_text:{clear:{target:"@p"}}}}} run title @p clear
execute if data storage more_nbt:util {food:{on_consume:{show_text:{clear:{target:"@r"}}}}} run title @r clear
execute if data storage more_nbt:util {food:{on_consume:{show_text:{clear:{target:"@s"}}}}} run title @s clear
execute if data storage more_nbt:util {food:{on_consume:{show_text:{clear:{target:"this"}}}}} run title @p clear