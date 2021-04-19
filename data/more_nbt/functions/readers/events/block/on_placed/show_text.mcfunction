# Desc: show text
#
# Called By: more_nbt:readers/event_triggers/block/on_placed

# .tellraw
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {tellraw: {target: "@a"}}}}}}] run tellraw @a [{"entity":"@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.tellraw.raw_text","interpret": true}]
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {tellraw: {target: "@p"}}}}}}] run tellraw @p [{"entity":"@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.tellraw.raw_text","interpret": true}]
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {tellraw: {target: "@r"}}}}}}] run tellraw @r [{"entity":"@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.tellraw.raw_text","interpret": true}]
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {tellraw: {target: "@s"}}}}}}] run tellraw @s [{"entity":"@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.tellraw.raw_text","interpret": true}]
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {tellraw: {target: "this"}}}}}}] run tellraw @p [{"entity":"@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.tellraw.raw_text","interpret": true}]
# .say
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {say: {}}}}}}] run tellraw @a ["<",{"selector":"@p"},"> ",{"entity":"@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.say.text","interpret": false}]
# .title
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {title: {target: "@a"}}}}}}] run title @a title [{"entity":"@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.title.raw_text","interpret": true}]
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {title: {target: "@p"}}}}}}] run title @p title [{"entity":"@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.title.raw_text","interpret": true}]
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {title: {target: "@r"}}}}}}] run title @r title [{"entity": "@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.title.raw_text","interpret": true}]
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {title: {target: "@s"}}}}}}] run title @s title [{"entity": "@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.title.raw_text","interpret": true}]
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {title: {target: "this"}}}}}}] run title @p title [{"entity": "@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.title.raw_text","interpret": true}]
# .subtitle
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {subtitle: {target: "@a"}}}}}}] run title @a subtitle [{"entity": "@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.subtitle.raw_text","interpret": true}]
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {subtitle: {target: "@p"}}}}}}] run title @p subtitle [{"entity": "@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.subtitle.raw_text","interpret": true}]
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {subtitle: {target: "@r"}}}}}}] run title @r subtitle [{"entity": "@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.subtitle.raw_text","interpret": true}]
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {subtitle: {target: "@s"}}}}}}] run title @s subtitle [{"entity": "@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.subtitle.raw_text","interpret": true}]
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {subtitle: {target: "this"}}}}}}] run title @p subtitle [{"entity": "@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.subtitle.raw_text","interpret": true}]
# .actionbar
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {actionbar: {target: "@a"}}}}}}] run title @a actionbar [{"entity": "@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.actionbar.raw_text","interpret": true}]
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {actionbar: {target: "@p"}}}}}}] run title @p actionbar [{"entity": "@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.actionbar.raw_text","interpret": true}]
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {actionbar: {target: "@r"}}}}}}] run title @r actionbar [{"entity": "@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.actionbar.raw_text","interpret": true}]
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {actionbar: {target: "@s"}}}}}}] run title @s actionbar [{"entity": "@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.actionbar.raw_text","interpret": true}]
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {actionbar: {target: "this"}}}}}}] run title @p actionbar [{"entity": "@e[tag=CustomBlockTag,limit=1]","nbt":"data.components.on_placed.show_text.actionbar.raw_text","interpret": true}]
# .clear
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {clear: {target: "@a"}}}}}}] run title @a clear
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {clear: {target: "@p"}}}}}}] run title @p clear
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {clear: {target: "@r"}}}}}}] run title @r clear
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {clear: {target: "@s"}}}}}}] run title @s clear
execute at @e[tag=CustomBlockTag,limit=1,nbt={data: {components: {on_placed: {show_text: {clear: {target: "this"}}}}}}] run title @p clear