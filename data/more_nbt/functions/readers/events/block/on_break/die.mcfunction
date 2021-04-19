# Desc: Kill target
#
# Called By: more_nbt:readers/event_triggers/block/on_break

execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_break:{die:{target:"@a"}}}}}] run kill @a
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_break:{die:{target:"@e"}}}}}] run kill @e
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_break:{die:{target:"@p"}}}}}] run kill @p
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_break:{die:{target:"@r"}}}}}] run kill @r
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_break:{die:{target:"@s"}}}}}] run kill @s
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_break:{die:{target:"this"}}}}}] run kill @s