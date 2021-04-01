# Desc: Runs "replaceitem" NBT.
#
# Called By: more_nbt:main_tick

# Change to:
# {copy:{from:{block:{offset:[0,-1,0],slot:"container.0",replace:false,consume_item:true}},to:{entity:{target:"this",slot:"weapon.mainhand",replace:false,consume:true}}}}
#
# {entity:{target:"@p",slot:"armor.head",replace:false,consume:true}}
#
# {block:{offset:[0,-1,0],slot:"container.0",replace:false,consume:true}}

execute unless entity @p[nbt={Inventory:[{Slot:103b}]}] if entity @p[nbt={SelectedItem:{tag:{on_use_on:{replaceitem:{slot:"armor.head",replace:0b}}}}}] run item entity @p armor.head copy entity @p weapon.mainhand
execute unless entity @p[nbt={SelectedItem:{}}] if entity @p[nbt={SelectedItem:{tag:{on_use_on:{replaceitem:{slot:"weapon.mainhand",replace:0b}}}}}] run item entity @p weapon.mainhand copy entity @p weapon.mainhand
execute unless entity @p[nbt={Inventory:[{Slot:-106b}]}] if entity @p[nbt={SelectedItem:{tag:{on_use_on:{replaceitem:{slot:"weapon.offhand",replace:0b}}}}}] run item entity @p weapon.offhand copy entity @p weapon.mainhand

execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{replaceitem:{slot:"armor.head",replace:1b}}}}}] run item entity @p armor.head copy entity @p weapon.mainhand
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{replaceitem:{slot:"weapon.mainhand",replace:1b}}}}}] run item entity @p weapon.mainhand copy entity @p weapon.mainhand
execute if entity @p[nbt={SelectedItem:{tag:{on_use_on:{replaceitem:{slot:"weapon.offhand",replace:1b}}}}}] run item entity @p weapon.offhand copy entity @p weapon.mainhand
