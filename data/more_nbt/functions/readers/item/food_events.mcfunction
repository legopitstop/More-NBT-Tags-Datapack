# Desc: Food events
#
# Called By: more_nbt:readers/item/food

# Events
execute if data storage more_nbt:util {food:{on_consume:{add_mob_effect:[{}]}}} run function more_nbt:readers/events/item/on_consume/add_mob_effect
execute if data storage more_nbt:util {food:{on_consume:{remove_mob_effect:[{}]}}} run function more_nbt:readers/events/item/on_consume/remove_mob_effect
execute if data storage more_nbt:util {food:{on_consume:{die:{}}}} run function more_nbt:readers/events/item/on_consume/die
execute if data storage more_nbt:util {food:{on_consume:{transform_item:{}}}} run function more_nbt:readers/events/item/on_consume/transform_item
execute if data storage more_nbt:util {food:{on_consume:{item:{}}}} run function more_nbt:readers/events/item/on_consume/item
execute if data storage more_nbt:util {food:{on_consume:{show_text:{}}}} run function more_nbt:readers/events/item/on_consume/show_text
execute if data storage more_nbt:util {food:{on_consume:{decrement_stack:{}}}} run function more_nbt:readers/events/item/on_consume/decrement_stack
execute if data storage more_nbt:util {food:{on_consume:{play_sound:{}}}} run function more_nbt:readers/events/item/on_consume/play_sound
execute if data storage more_nbt:util {food:{on_consume:{damage:{}}}} run function more_nbt:readers/events/item/on_consume/damage
execute if data storage more_nbt:util {food:{on_consume:{reload:{}}}} run function more_nbt:readers/events/item/on_consume/reload
execute if data storage more_nbt:util {food:{on_consume:{summon:{}}}} run function more_nbt:readers/events/item/on_consume/summon
execute if data storage more_nbt:util {food:{on_consume:{structure:{}}}} run function more_nbt:readers/events/item/on_consume/structure

# INDEV
execute if data storage more_nbt:util {food:{on_consume:{random:{}}}} run function more_nbt:readers/events/item/on_consume/random
execute if data storage more_nbt:util {food:{on_consume:{score:{}}}} run function more_nbt:readers/events/item/on_consume/score.add
execute if data storage more_nbt:util {food:{on_consume:{score:{}}}} run function more_nbt:readers/events/item/on_consume/score.set
execute if data storage more_nbt:util {food:{on_consume:{score:{}}}} run function more_nbt:readers/events/item/on_consume/score.remove
execute if data storage more_nbt:util {food:{on_consume:{merge_data:{}}}} run function more_nbt:readers/events/item/on_consume/merge_data





