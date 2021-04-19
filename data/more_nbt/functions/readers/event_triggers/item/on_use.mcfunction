# Desc: Tags that are inside the `held_on` tag.  ex; `give @p paper{on_use:{<--HERE-->}}`
#
# Called By: more_nbt:reader_tick

execute at @p[nbt={SelectedItem:{tag:{on_use:{add_mob_effect:[{}]}}}}] run function more_nbt:readers/events/item/on_use/add_mob_effect
execute at @p[nbt={SelectedItem:{tag:{on_use:{remove_mob_effect:[{}]}}}}] run function more_nbt:readers/events/item/on_use/remove_mob_effect
execute at @p[nbt={SelectedItem:{tag:{on_use:{die:{}}}}}] run function more_nbt:readers/events/item/on_use/die
execute at @p[nbt={SelectedItem:{tag:{on_use:{item:{}}}}}] run function more_nbt:readers/events/item/on_use/item
execute at @p[nbt={SelectedItem:{tag:{on_use:{transform_item:{}}}}}] run function more_nbt:readers/events/item/on_use/transform_item
execute at @p[nbt={SelectedItem:{tag:{on_use:{show_text:{}}}}}] run function more_nbt:readers/events/item/on_use/show_text
execute at @p[nbt={SelectedItem:{tag:{on_use:{merge_data:{}}}}}] run function more_nbt:readers/events/item/on_use/merge_data
execute at @p[nbt={SelectedItem:{tag:{on_use:{score:{add:{}}}}}}] run function more_nbt:readers/events/item/on_use/score.add
execute at @p[nbt={SelectedItem:{tag:{on_use:{score:{remove:{}}}}}}] run function more_nbt:readers/events/item/on_use/score.remove
execute at @p[nbt={SelectedItem:{tag:{on_use:{score:{set:{}}}}}}] run function more_nbt:readers/events/item/on_use/score.set
execute at @p[nbt={SelectedItem:{tag:{on_use:{damage:{}}}}}] run function more_nbt:readers/events/item/on_use/damage
execute at @p[nbt={SelectedItem:{tag:{on_use:{play_sound:{}}}}}] run function more_nbt:readers/events/item/on_use/play_sound
execute at @p[nbt={SelectedItem:{tag:{on_use:{summon:{}}}}}] run function more_nbt:readers/events/item/on_use/summon
execute at @p[nbt={SelectedItem:{tag:{on_use:{random:{}}}}}] run function more_nbt:readers/events/item/on_use/random
execute at @p[nbt={SelectedItem:{tag:{on_use:{loot:{}}}}}] run function more_nbt:readers/events/item/on_use/loot
execute at @p[nbt={SelectedItem:{tag:{on_use:{structure:{}}}}}] run function more_nbt:readers/events/item/on_use/structure
execute if data storage more_nbt:config {config: {on_use_reload: true}} at @p[nbt={SelectedItem:{tag:{on_use:{reload:{}}}}}] run function more_nbt:readers/events/item/on_use/reload
execute at @p[nbt={SelectedItem:{tag:{on_use:{run_command:{}}}}}] run function more_nbt:readers/events/item/on_use/run_command
execute at @p[nbt={SelectedItem:{tag:{on_use:{set_block:{}}}}}] run function more_nbt:readers/events/item/on_use/set_block

# decrease stack, last incase if it is the last item of the stack.
execute at @p[nbt={SelectedItem:{tag:{on_use:{decrement_stack:{}}}}}] run function more_nbt:readers/events/item/on_use/decrement_stack

# Item cooldown, at bottom that way other events can run first.
execute at @p[nbt={SelectedItem:{tag:{on_use:{cooldown:{}}}}}] run function more_nbt:readers/events/item/on_use/cooldown