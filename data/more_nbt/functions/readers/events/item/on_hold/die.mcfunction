# Desc: Runs "die" NBT.
#
# Called By: more_nbt:readers/event_triggers/item/on_hold

execute if entity @p[nbt={SelectedItem:{tag:{on_hold:{die:{target:"@a"}}}}}] run kill @a
execute if entity @p[nbt={SelectedItem:{tag:{on_hold:{die:{target:"@e"}}}}}] run kill @e
execute if entity @p[nbt={SelectedItem:{tag:{on_hold:{die:{target:"@p"}}}}}] run kill @p
execute if entity @p[nbt={SelectedItem:{tag:{on_hold:{die:{target:"@r"}}}}}] run kill @r
execute if entity @p[nbt={SelectedItem:{tag:{on_hold:{die:{target:"@s"}}}}}] run kill @s
execute if entity @p[nbt={SelectedItem:{tag:{on_hold:{die:{target:"this"}}}}}] run kill @s
