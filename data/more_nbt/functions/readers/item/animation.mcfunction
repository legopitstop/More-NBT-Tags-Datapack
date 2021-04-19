# Desc: Runs "animation" NBT.
#
# Called By: more_nbt:readers/direct

# add score if looping
execute if score frametick animatedModels matches ..0 run scoreboard players set frametick animatedModels 1
# Get frametime
execute at @p[nbt={SelectedItem:{tag:{animation:{looping:1b,play_frame_slot:"weapon.mainhand"}}}}] store result score frametime animatedModels run data get entity @p SelectedItem.tag.animation.frametime
execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"weapon.offhand"}}}]}] store result score frametime animatedModels run data get entity @p Inventory[{Slot:-106b}].tag.animation.frametime
execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] store result score frametime animatedModels run data get entity @p Inventory[].tag.animation.frametime
# add score depending on set score
execute if score frametick animatedModels matches 1.. run scoreboard players operation frametick animatedModels += frametime animatedModels
# frames
    # frame 0
    execute at @p[nbt={SelectedItem:{tag:{animation:{looping:1b,play_frame_slot:"weapon.mainhand"}}}}] if score frametick animatedModels matches 40..79 store result storage more_nbt:global_storage animation.frames int 1 run data get entity @p SelectedItem.tag.animation.frames[0]
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"weapon.offhand"}}}]}] if score frametick animatedModels matches 40..79 store result storage more_nbt:global_storage animation.frames int 1 run data get entity @p Inventory[{Slot:-106b}].tag.animation.frames[0]
    # frame 1
    execute at @p[nbt={SelectedItem:{tag:{animation:{looping:1b,play_frame_slot:"weapon.mainhand"}}}}] if score frametick animatedModels matches 80..119 store result storage more_nbt:global_storage animation.frames int 1 run data get entity @p SelectedItem.tag.animation.frames[1]
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"weapon.offhand"}}}]}] if score frametick animatedModels matches 80..119 store result storage more_nbt:global_storage animation.frames int 1 run data get entity @p Inventory[{Slot:-106b}].tag.animation.frames[1]
    # frame 2
    execute at @p[nbt={SelectedItem:{tag:{animation:{looping:1b,play_frame_slot:"weapon.mainhand"}}}}] if score frametick animatedModels matches 120..159 store result storage more_nbt:global_storage animation.frames int 1 run data get entity @p SelectedItem.tag.animation.frames[2]
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"weapon.offhand"}}}]}] if score frametick animatedModels matches 120..159 store result storage more_nbt:global_storage animation.frames int 1 run data get entity @p Inventory[{Slot:-106b}].tag.animation.frames[2]
    # frame 3
    execute at @p[nbt={SelectedItem:{tag:{animation:{looping:1b,play_frame_slot:"weapon.mainhand"}}}}] if score frametick animatedModels matches 160..199 store result storage more_nbt:global_storage animation.frames int 1 run data get entity @p SelectedItem.tag.animation.frames[3]
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"weapon.offhand"}}}]}] if score frametick animatedModels matches 160..199 store result storage more_nbt:global_storage animation.frames int 1 run data get entity @p Inventory[{Slot:-106b}].tag.animation.frames[3]
    # frame 4
    execute at @p[nbt={SelectedItem:{tag:{animation:{looping:1b,play_frame_slot:"weapon.mainhand"}}}}] if score frametick animatedModels matches 200..239 store result storage more_nbt:global_storage animation.frames int 1 run data get entity @p SelectedItem.tag.animation.frames[4]
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"weapon.offhand"}}}]}] if score frametick animatedModels matches 200..239 store result storage more_nbt:global_storage animation.frames int 1 run data get entity @p Inventory[{Slot:-106b}].tag.animation.frames[4]
    # frame 5
    execute at @p[nbt={SelectedItem:{tag:{animation:{looping:1b,play_frame_slot:"weapon.mainhand"}}}}] if score frametick animatedModels matches 240.. store result storage more_nbt:global_storage animation.frames int 1 run data get entity @p SelectedItem.tag.animation.frames[5]
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"weapon.offhand"}}}]}] if score frametick animatedModels matches 240.. store result storage more_nbt:global_storage animation.frames int 1 run data get entity @p Inventory[{Slot:-106b}].tag.animation.frames[5]

# display slot.
    # mainhand
    execute at @p[nbt={SelectedItem:{tag:{animation:{looping:1b,play_frame_slot:"weapon.mainhand"}}}}] if score frametick animatedModels matches 40..240 run item entity @p weapon.mainhand modify more_nbt:animation
    # offhand
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"weapon.offhand"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p weapon.offhand modify more_nbt:animation
    # inventory
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.0 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.1 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.2 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.3 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.4 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.5 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.6 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.7 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.8 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.9 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.10 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.11 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.12 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.13 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.14 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.15 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.16 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.17 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.18 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.19 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.20 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.21 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.22 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.23 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.24 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.25 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"inventory"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.26 modify more_nbt:animation
    # all
    execute at @p[nbt={SelectedItem:{tag:{animation:{looping:1b,play_frame_slot:"all"}}}}] if score frametick animatedModels matches 40..240 run item entity @p weapon.mainhand modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p weapon.offhand modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.0 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.1 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.2 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.3 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.4 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.5 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.6 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.7 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.8 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.9 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.10 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.11 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.12 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.13 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.14 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.15 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.16 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.17 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.18 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.19 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.20 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.21 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.22 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.23 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.24 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.25 modify more_nbt:animation
    execute at @p[nbt={Inventory:[{Slot:-106b,tag:{animation:{looping:1b,play_frame_slot:"all"}}}]}] if score frametick animatedModels matches 40..240 run item entity @p inventory.26 modify more_nbt:animation

# reset score
execute if score frametick animatedModels matches 240.. run scoreboard players set frametick animatedModels 0