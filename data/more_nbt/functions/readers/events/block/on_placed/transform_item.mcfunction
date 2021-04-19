# Desc: transform item
#
# Called By: more_nbt:readers/event_triggers/block/on_placed

tellraw @p {"text":"This event is still indev"}

execute at @e[tag=CustomBlockTag,nbt={data:{components:{on_placed:{transform_item:{transform:"minecraft:stone"}}}}}] run item entity @p weapon.mainhand replace minecraft:stone