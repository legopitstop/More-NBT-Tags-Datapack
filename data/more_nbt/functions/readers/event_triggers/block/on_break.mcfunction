# Desc: Run functions when the block has been broken.
#
# Called By: more_nbt:readers/item/block_tag

# AtPlayer
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{add_mob_effect:[{}]}}}}] as @p run function more_nbt:readers/events/block/on_break/add_mob_effect
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{damage:{}}}}}] as @p run function more_nbt:readers/events/block/on_break/damage
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{decrement_stack:{}}}}}] as @p run function more_nbt:readers/events/block/on_break/decrement_stack
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{die:{}}}}}] as @p run function more_nbt:readers/events/block/on_break/die
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{item:{}}}}}] as @p run function more_nbt:readers/events/block/on_break/item
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{play_sound:{}}}}}] as @p run function more_nbt:readers/events/block/on_break/play_sound
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{remove_mob_effect:[{}]}}}}] as @p run function more_nbt:readers/events/block/on_break/remove_mob_effect
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{score:{add:{}}}}}}] as @p run function more_nbt:readers/events/block/on_break/score.add
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{score:{remove:{}}}}}}] as @p run function more_nbt:readers/events/block/on_break/score.remove
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{score:{set:{}}}}}}] as @p run function more_nbt:readers/events/block/on_break/score.set
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{show_text:{}}}}}] as @p run function more_nbt:readers/events/block/on_break/show_text

# indev (tellraw @p {"text":"This event is still indev"})
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{loot:{}}}}}] as @p run function more_nbt:readers/events/block/on_break/loot
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{merge_data:{}}}}}] as @p run function more_nbt:readers/events/block/on_break/merge_data
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{random:{}}}}}] as @p run function more_nbt:readers/events/block/on_break/random
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{reload:{}}}}}] as @p run function more_nbt:readers/events/block/on_break/reload
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{run_command:{}}}}}] as @p run function more_nbt:readers/events/block/on_break/run_command
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{transform_item:{}}}}}] as @p run function more_nbt:readers/events/block/on_break/transform_item

# AtBlock
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{set_block_property:{}}}}}] as @p run function more_nbt:readers/events/block/on_break/set_block_property
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{set_block:{}}}}}] as @p run function more_nbt:readers/events/block/on_break/set_block
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{structure:{}}}}}] as @p run function more_nbt:readers/events/block/on_break/structure
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_break:{summon:{}}}}}] as @p run function more_nbt:readers/events/block/on_break/summon
