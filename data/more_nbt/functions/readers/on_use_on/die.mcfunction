# Desc: Runs "die" NBT.
#
# Called By: more_nbt:main_tick

execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{die:{target:"@a"}}}}}] run kill @a
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{die:{target:"@e"}}}}}] run kill @e
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{die:{target:"@p"}}}}}] run kill @p
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{die:{target:"@r"}}}}}] run kill @r
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{die:{target:"@s"}}}}}] run kill @s
