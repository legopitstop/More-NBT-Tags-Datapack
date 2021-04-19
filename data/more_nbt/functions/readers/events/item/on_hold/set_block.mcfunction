# Desc: Runs "set_block" NBT.
#
# Called By: more_nbt:readers/event_triggers/item/on_hold

# {moreNBT:{nbt_format:2},on_hold:{set_block:{block_type:[{Name:"minecraft:cobblestone"}],pos:[0,0,0],nbt:[{}]}}}
# on_hold.set_block
execute at @p[nbt={SelectedItem:{tag:{on_hold:{set_block:{}}}}}] run summon minecraft:falling_block ~ ~ ~ {NoGravity:0b,Tags:["MoreNbt"],BlockState:{Name:"minecraft:stone"},Time:1}
# apply entity NBT to entity
execute at @p[nbt={SelectedItem:{tag:{on_hold:{set_block:{}}}}}] run data modify entity @e[limit=1,tag=MoreNbt,sort=nearest] Pos merge from entity @p SelectedItem.tag.on_hold.Pos
execute at @p[nbt={SelectedItem:{tag:{on_hold:{set_block:{}}}}}] run data modify entity @e[limit=1,tag=MoreNbt,sort=nearest] BlockState merge from entity @p SelectedItem.tag.on_hold.set_block.block_type[0]
execute at @p[nbt={SelectedItem:{tag:{on_hold:{set_block:{nbt:[{}]}}}}}] run data modify entity @e[limit=1,tag=MoreNbt,sort=nearest] {} merge from entity @p SelectedItem.tag.on_hold.set_block.nbt[0]