# Desc: Kill target
#
# Called By: more_nbt:readers/event_triggers/block/on_placed

execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{die:{target:"@a"}}}}}] run kill @a
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{die:{target:"@e"}}}}}] run kill @e
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{die:{target:"@p"}}}}}] run kill @p
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{die:{target:"@r"}}}}}] run kill @r
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{die:{target:"@s"}}}}}] run kill @s
execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{die:{target:"this"}}}}}] run kill @s