# Desc: Changes the block property.
#
# Called By: more_nbt:readers/event_triggers/block/on_break

execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_break:{set_block_property:{}}}}}] run tellraw @a {"text":"Not Added yet."}