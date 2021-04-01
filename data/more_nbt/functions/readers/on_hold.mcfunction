# Desc: Runs "template_tile" NBT.
#
# Called By: more_nbt:main_tick
execute at @p[nbt={SelectedItem:{tag:{on_hold:{add_mob_effect:[{}]}}}}] run function more_nbt:readers/on_hold/add_mob_effect
execute at @p[nbt={SelectedItem:{tag:{on_hold:{remove_mob_effect:[{}]}}}}] run function more_nbt:readers/on_hold/remove_mob_effect
execute at @p[nbt={SelectedItem:{tag:{on_hold:{die:{}}}}}] run function more_nbt:readers/on_hold/die
execute at @p[nbt={SelectedItem:{tag:{on_hold:{replaceitem:{}}}}}] run function more_nbt:readers/on_hold/replaceitem
execute at @p[nbt={SelectedItem:{tag:{on_hold:{transform_item:{}}}}}] run function more_nbt:readers/on_hold/transform_item
execute at @p[nbt={SelectedItem:{tag:{on_hold:{show_text:{}}}}}] run function more_nbt:readers/on_hold/show_text
execute at @p[nbt={SelectedItem:{tag:{on_hold:{merge_data:{}}}}}] run function more_nbt:readers/on_hold/merge_data
execute at @p[nbt={SelectedItem:{tag:{on_hold:{score:{add:{}}}}}}] run function more_nbt:readers/on_hold/score.add
execute at @p[nbt={SelectedItem:{tag:{on_hold:{score:{remove:{}}}}}}] run function more_nbt:readers/on_hold/score.remove
execute at @p[nbt={SelectedItem:{tag:{on_hold:{score:{set:{}}}}}}] run function more_nbt:readers/on_hold/score.set
execute at @p[nbt={SelectedItem:{tag:{on_hold:{damage:{}}}}}] run function more_nbt:readers/on_hold/damage
execute at @p[nbt={SelectedItem:{tag:{on_hold:{play_sound:{}}}}}] run function more_nbt:readers/on_hold/play_sound
execute at @p[nbt={SelectedItem:{tag:{on_hold:{summon:{}}}}}] run function more_nbt:readers/on_hold/summon
execute at @p[nbt={SelectedItem:{tag:{on_hold:{random:{}}}}}] run function more_nbt:readers/on_hold/random
execute at @p[nbt={SelectedItem:{tag:{on_hold:{loot:{}}}}}] run function more_nbt:readers/on_hold/loot
execute at @p[nbt={SelectedItem:{tag:{on_hold:{structure:{}}}}}] run function more_nbt:readers/on_hold/structure
execute at @p[nbt={SelectedItem:{tag:{on_hold:{reload:{}}}}}] run function more_nbt:readers/on_hold/reload
execute at @p[nbt={SelectedItem:{tag:{on_hold:{run_command:{}}}}}] run function more_nbt:readers/on_hold/run_command
execute at @p[nbt={SelectedItem:{tag:{on_hold:{set_block:{}}}}}] run function more_nbt:readers/on_hold/set_block