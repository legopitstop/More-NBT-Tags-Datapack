# Desc: Runs "die" NBT.
#
# Called By: more_nbt:readers/item/food_events

execute if data storage more_nbt:util {food:{on_consume:{die:{target:"@a"}}}} run kill @a
execute if data storage more_nbt:util {food:{on_consume:{die:{target:"@e"}}}} run kill @e
execute if data storage more_nbt:util {food:{on_consume:{die:{target:"@p"}}}} run kill @p
execute if data storage more_nbt:util {food:{on_consume:{die:{target:"@r"}}}} run kill @r
execute if data storage more_nbt:util {food:{on_consume:{die:{target:"@s"}}}} run kill @s
execute if data storage more_nbt:util {food:{on_consume:{die:{target:"this"}}}} run kill @s
