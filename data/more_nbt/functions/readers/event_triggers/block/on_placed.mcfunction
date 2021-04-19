# Desc: Run functions when the block has been broken.
#
# Called By: more_nbt:readers/item/block_tag

# AtPlayer
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{add_mob_effect:[{}]}}}}] as @p run function more_nbt:readers/events/block/on_placed/add_mob_effect
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{damage:{}}}}}] as @p run function more_nbt:readers/events/block/on_placed/damage
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{decrement_stack:{}}}}}] as @p run function more_nbt:readers/events/block/on_placed/decrement_stack
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{die:{}}}}}] as @p run function more_nbt:readers/events/block/on_placed/die
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{item:{}}}}}] as @p run function more_nbt:readers/events/block/on_placed/item
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{play_sound:{}}}}}] as @p run function more_nbt:readers/events/block/on_placed/play_sound
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{remove_mob_effect:[{}]}}}}] as @p run function more_nbt:readers/events/block/on_placed/remove_mob_effect
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{score:{add:{}}}}}}] as @p run function more_nbt:readers/events/block/on_placed/score.add
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{score:{remove:{}}}}}}] as @p run function more_nbt:readers/events/block/on_placed/score.remove
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{score:{set:{}}}}}}] as @p run function more_nbt:readers/events/block/on_placed/score.set
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{show_text:{}}}}}] as @p run function more_nbt:readers/events/block/on_placed/show_text

# indev (tellraw @p {"text":"This event is still indev"})
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{loot:{}}}}}] as @p run function more_nbt:readers/events/block/on_placed/loot
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{merge_data:{}}}}}] as @p run function more_nbt:readers/events/block/on_placed/merge_data
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{random:{}}}}}] as @p run function more_nbt:readers/events/block/on_placed/random
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{reload:{}}}}}] as @p run function more_nbt:readers/events/block/on_placed/reload
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{run_command:{}}}}}] as @p run function more_nbt:readers/events/block/on_placed/run_command
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{transform_item:{}}}}}] as @p run function more_nbt:readers/events/block/on_placed/transform_item

# AtBlock
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{set_block_property:{}}}}}] as @p run function more_nbt:readers/events/block/on_placed/set_block_property
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{set_block:{}}}}}] as @p run function more_nbt:readers/events/block/on_placed/set_block
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{structure:{}}}}}] as @p run function more_nbt:readers/events/block/on_placed/structure
execute at @e[tag=CustomBlockTag,distance=..0.5,nbt={data:{components:{on_placed:{summon:{}}}}}] as @p run function more_nbt:readers/events/block/on_placed/summon
