# Desc: Runs "debugLog" NBT. debugLog will show whats happening and some error if their is any.
#
# Called By: more_nbt:main_tick

# decrement_stack
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{decrement_stack:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Removed Item: 'on_use.decrement_stack'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{decrement_stack:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Removed Item: 'on_hold.decrement_stack'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{decrement_stack:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Removed Item: 'on_use_on.decrement_stack'","color":"white"}]

# add_mob_effect
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{add_mob_effect:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Must be in an array: 'on_use.add_mob_effect.[]'","color":"red"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{add_mob_effect:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Must be in an array: 'on_hold.add_mob_effect.[]'","color":"red"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{add_mob_effect:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Must be in an array: 'on_use_on.add_mob_effect.[]'","color":"red"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{add_mob_effect:[{}]}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Gave effect: 'on_use.add_mob_effect.[]'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{add_mob_effect:[{}]}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Gave effect: 'on_hold.add_mob_effect.[]'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{add_mob_effect:[{}]}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Gave effect: 'on_use_on.add_mob_effect.[]'","color":"white"}]
# remove_mob_effect
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{remove_mob_effect:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Must be in an array: 'on_use.remove_mob_effect.[]'","color":"red"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{remove_mob_effect:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Must be in an array: 'on_hold.remove_mob_effect.[]'","color":"red"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Must be in an array: 'on_use_on.remove_mob_effect.[]'","color":"red"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{remove_mob_effect:[{}]}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Remove effect: 'on_use.remove_mob_effect.[]'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{remove_mob_effect:[{}]}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Remove effect: 'on_hold.remove_mob_effect.[]'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{remove_mob_effect:[{}]}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Remove effect: 'on_use_on.remove_mob_effect.[]'","color":"white"}]
# die
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{die:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"killed: 'die'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{die:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"killed: 'die'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{die:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"killed: 'die'","color":"white"}]

# replaceitem
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{replaceitem:{}}}}}] unless entity @p[nbt={SelectedItem:{tag:{on_use:{replaceitem:{replace:1b}}}}}] unless entity @p[nbt={SelectedItem:{tag:{on_use:{replaceitem:{replace:0b}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Missing 'replace' tag: 'on_use.replaceitem'","color":"red"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{replaceitem:{replace:0b}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Replaced item: 'on_use.replaceitem'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{replaceitem:{replace:1b}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Replaced item: 'on_use.replaceitem'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{replaceitem:{}}}}}] unless entity @p[nbt={SelectedItem:{tag:{on_hold:{replaceitem:{replace:1b}}}}}] unless entity @p[nbt={SelectedItem:{tag:{on_hold:{replaceitem:{replace:0b}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Missing 'replace' tag: 'on_hold.replaceitem'","color":"red"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{replaceitem:{replace:0b}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Replaced item: 'on_hold.replaceitem'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{replaceitem:{replace:1b}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Replaced item: 'on_hold.replaceitem'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{replaceitem:{}}}}}] unless entity @p[nbt={SelectedItem:{tag:{on_use_on:{replaceitem:{replace:1b}}}}}] unless entity @p[nbt={SelectedItem:{tag:{on_use_on:{replaceitem:{replace:0b}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Missing 'replace' tag: 'on_use_on.replaceitem'","color":"red"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{replaceitem:{replace:0b}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Replaced item: 'on_use_on.replaceitem'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{replaceitem:{replace:1b}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Replaced item: 'on_use_on.replaceitem'","color":"white"}]

# transform_item
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{transform_item:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Transformed item: 'on_use.transform_item'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{transform_item:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Transformed item: 'on_hold.transform_item'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{transform_item:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Transformed item: 'on_use_on.transform_item'","color":"white"}]

# show_text
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{show_text:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_use.show_text'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{show_text:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_hold.show_text'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{show_text:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_use_on.show_text'","color":"white"}]
    # show_text clear
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{show_text:{clear:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_use.show_text.clear'","color":"white"}]
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{show_text:{clear:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_hold.show_text.clear'","color":"white"}]
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{show_text:{clear:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_use_on.show_text.clear'","color":"white"}]
    # show_text say
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{show_text:{say:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_use.show_text.say'","color":"white"}]
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{show_text:{say:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_hold.show_text.say'","color":"white"}]
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{show_text:{say:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_use_on.show_text.say'","color":"white"}]
    # show_text tellraw
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{show_text:{tellraw:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_use.show_text.tellraw'","color":"white"}]
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{show_text:{tellraw:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_hold.show_text.tellraw'","color":"white"}]
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{show_text:{tellraw:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_use_on.show_text.tellraw'","color":"white"}]
    # show_text title
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{show_text:{title:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_use.show_text.title'","color":"white"}]
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{show_text:{title:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_hold.show_text.title'","color":"white"}]
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{show_text:{title:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_use_on.show_text.title'","color":"white"}]
    # show_text subtitle
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{show_text:{subtitle:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_use.show_text.subtitle'","color":"white"}]
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{show_text:{subtitle:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_hold.show_text.subtitle'","color":"white"}]
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{show_text:{subtitle:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_use_on.show_text.subtitle'","color":"white"}]
    # show_text actionbar
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{show_text:{actionbar:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_use.show_text.actionbar'","color":"white"}]
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{show_text:{actionbar:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_hold.show_text.actionbar'","color":"white"}]
    execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{show_text:{actionbar:{}}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Shown text: 'on_use_on.show_text.actionbar'","color":"white"}]

# merge_data
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{merge_data:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Merged data: 'on_use.merge_data'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{merge_data:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Merged data: 'on_hold.merge_data'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{merge_data:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Merged data: 'on_use_on.merge_data'","color":"white"}]

# throwable
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{throwable:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Threw item: 'on_use.throwable'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{throwable:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Threw item: 'on_hold.throwable'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{throwable:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Threw item: 'on_use_on.throwable'","color":"white"}]

# play_sound
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{play_sound:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Played sound: 'on_use.play_sound'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{play_sound:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Played sound: 'on_hold.play_sound'","color":"white"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{play_sound:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Played sound: 'on_use_on.play_sound'","color":"white"}]

# run_command
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{run_command:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Tag not implemented: 'on_use.run_command'","color":"yellow"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{run_command:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Tag not implemented: 'on_hold.run_command'","color":"yellow"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{run_command:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Tag not implemented: 'on_use_on.run_command'","color":"yellow"}]

# shooter
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use:{shooter:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Tag not implemented: 'on_use.shooter'","color":"yellow"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_hold:{shooter:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Tag not implemented: 'on_hold.shooter'","color":"yellow"}]
execute if entity @p[scores={used.item=1..},nbt={SelectedItem:{tag:{on_use_on:{shooter:{}}}}}] run tellraw @p ["",{"translate":"[DebugLog] ","color":"gray","bold":true},{"translate":"Tag not implemented: 'on_use_on.shooter'","color":"yellow"}]