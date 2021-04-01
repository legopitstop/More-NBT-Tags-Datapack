# Desc: Runs "template_tile" NBT.
#
# Called By: more_nbt:main_tick
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{add_mob_effect:[{}]}}}}] run function more_nbt:readers/on_use_on/add_mob_effect
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{}]}}}}] run function more_nbt:readers/on_use_on/remove_mob_effect
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{die:{}}}}}] run function more_nbt:readers/on_use_on/die
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{replaceitem:{}}}}}] run function more_nbt:readers/on_use_on/replaceitem
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{transform_item:{}}}}}] run function more_nbt:readers/on_use_on/transform_item
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{show_text:{}}}}}] run function more_nbt:readers/on_use_on/show_text
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{merge_data:{}}}}}] run function more_nbt:readers/on_use_on/merge_data
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{add:{}}}}}}] run function more_nbt:readers/on_use_on/score.add
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{remove:{}}}}}}] run function more_nbt:readers/on_use_on/score.remove
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{score:{set:{}}}}}}] run function more_nbt:readers/on_use_on/score.set
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{damage:{}}}}}] run function more_nbt:readers/on_use_on/damage
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{play_sound:{}}}}}] run function more_nbt:readers/on_use_on/play_sound
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{summon:{}}}}}] run function more_nbt:readers/on_use_on/summon
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{random:{}}}}}] run function more_nbt:readers/on_use_on/random
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{loot:{}}}}}] run function more_nbt:readers/on_use_on/loot
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{structure:{}}}}}] run function more_nbt:readers/on_use_on/structure
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{reload:{}}}}}] run function more_nbt:readers/on_use_on/reload
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{run_command:{}}}}}] run function more_nbt:readers/on_use_on/run_command
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{set_block:{}}}}}] run function more_nbt:readers/on_use_on/set_block

# decrease stack, last incase if it is the last item of the stack.
execute at @p[nbt={SelectedItem:{tag:{on_use_on:{decrement_stack:{}}}}}] run function more_nbt:readers/on_use_on/decrement_stack