# Desc: Item cooldown
#
# Called By: more_nbt:readers/event_triggers/item/on_use

# apply NBT data num to score cooldown
execute store result score cooldown Item run data get entity @p SelectedItem.tag.on_use.cooldown.value