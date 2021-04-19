# Desc: Runs "displayPreset" NBT.
#
# Called By: more_nbt:readers/direct

execute at @p[nbt={SelectedItem:{tag:{display_preset:{Name:"CUSTOM_TRANSLATION",type:"item"}}}}] run data merge storage more_nbt:global_storage {displayPreset:{Name:'{"italic":false,"translate":"item.minecraft.paper"}'}}
execute at @p[nbt={SelectedItem:{tag:{display_preset:{Name:"CUSTOM_TRANSLATION",type:"block"}}}}] run data merge storage more_nbt:global_storage {displayPreset:{Name:'{"italic":false,"translate":"block.minecraft.paper"}'}}
execute at @p[nbt={SelectedItem:{tag:{display_preset:{Name:"CUSTOM_TRANSLATION",type:"entity"}}}}] run data merge storage more_nbt:global_storage {displayPreset:{Name:'{"italic":false,"translate":"entity.minecraft.paper"}'}}
execute at @p[nbt={SelectedItem:{tag:{display_preset:{Name:"TRANSLATION"}}}}] run data merge storage more_nbt:global_storage {displayPreset:{Name:'{"italic":false,"translate":"item.minecraft.paper"}'}}
execute at @p[nbt={SelectedItem:{tag:{display_preset:{Name:"BLANK"}}}}] run data merge storage more_nbt:global_storage {displayPreset:{Name:'{"text":""}'}}

execute at @p[nbt={SelectedItem:{tag:{display_preset:{Lore:["TOOLTIP1"]}}}}] run data merge storage more_nbt:global_storage {displayPreset:{Lore:['{"italic":false,"translate":"item.minecraft.paper.tooltip1"}']}}
execute at @p[nbt={SelectedItem:{tag:{display_preset:{Lore:["TOOLTIP2"]}}}}] run data merge storage more_nbt:global_storage {displayPreset:{Lore:['{"italic":false,"translate":"item.minecraft.paper.tooltip1"}','{"italic":false,"translate":"item.minecraft.paper.tooltip2"}']}}
execute at @p[nbt={SelectedItem:{tag:{display_preset:{Lore:["TOOLTIP3"]}}}}] run data merge storage more_nbt:global_storage {displayPreset:{Lore:['{"italic":false,"translate":"item.minecraft.paper.tooltip1"}','{"italic":false,"translate":"item.minecraft.paper.tooltip2"}','{"italic":false,"translate":"item.minecraft.paper.tooltip3"}']}}
execute at @p[nbt={SelectedItem:{tag:{display_preset:{Lore:["TOOLTIP4"]}}}}] run data merge storage more_nbt:global_storage {displayPreset:{Lore:['{"italic":false,"translate":"item.minecraft.paper.tooltip1"}','{"italic":false,"translate":"item.minecraft.paper.tooltip2"}','{"italic":false,"translate":"item.minecraft.paper.tooltip3"}','{"italic":false,"translate":"item.minecraft.paper.tooltip4"}']}}
execute at @p[nbt={SelectedItem:{tag:{display_preset:{Lore:["TOOLTIP5"]}}}}] run data merge storage more_nbt:global_storage {displayPreset:{Lore:['{"italic":false,"translate":"item.minecraft.paper.tooltip1"}','{"italic":false,"translate":"item.minecraft.paper.tooltip2"}','{"italic":false,"translate":"item.minecraft.paper.tooltip3"}','{"italic":false,"translate":"item.minecraft.paper.tooltip4"}','{"italic":false,"translate":"item.minecraft.paper.tooltip5"}']}}
execute at @p[nbt={SelectedItem:{tag:{display_preset:{Lore:["TOOLTIP6"]}}}}] run data merge storage more_nbt:global_storage {displayPreset:{Lore:['{"italic":false,"translate":"item.minecraft.paper.tooltip1"}','{"italic":false,"translate":"item.minecraft.paper.tooltip2"}','{"italic":false,"translate":"item.minecraft.paper.tooltip3"}','{"italic":false,"translate":"item.minecraft.paper.tooltip4"}','{"italic":false,"translate":"item.minecraft.paper.tooltip5"}','{"italic":false,"translate":"item.minecraft.paper.tooltip6"}']}}
execute at @p[nbt={SelectedItem:{tag:{display_preset:{Lore:["TOOLTIP7"]}}}}] run data merge storage more_nbt:global_storage {displayPreset:{Lore:['{"italic":false,"translate":"item.minecraft.paper.tooltip1"}','{"italic":false,"translate":"item.minecraft.paper.tooltip2"}','{"italic":false,"translate":"item.minecraft.paper.tooltip3"}','{"italic":false,"translate":"item.minecraft.paper.tooltip4"}','{"italic":false,"translate":"item.minecraft.paper.tooltip5"}','{"italic":false,"translate":"item.minecraft.paper.tooltip6"}','{"italic":false,"translate":"item.minecraft.paper.tooltip7"}']}}
execute at @p[nbt={SelectedItem:{tag:{display_preset:{Lore:["TOOLTIP8"]}}}}] run data merge storage more_nbt:global_storage {displayPreset:{Lore:['{"italic":false,"translate":"item.minecraft.paper.tooltip1"}','{"italic":false,"translate":"item.minecraft.paper.tooltip2"}','{"italic":false,"translate":"item.minecraft.paper.tooltip3"}','{"italic":false,"translate":"item.minecraft.paper.tooltip4"}','{"italic":false,"translate":"item.minecraft.paper.tooltip5"}','{"italic":false,"translate":"item.minecraft.paper.tooltip6"}','{"italic":false,"translate":"item.minecraft.paper.tooltip7"}','{"italic":false,"translate":"item.minecraft.paper.tooltip8"}']}}
execute at @p[nbt={SelectedItem:{tag:{display_preset:{Lore:["TOOLTIP9"]}}}}] run data merge storage more_nbt:global_storage {displayPreset:{Lore:['{"italic":false,"translate":"item.minecraft.paper.tooltip1"}','{"italic":false,"translate":"item.minecraft.paper.tooltip2"}','{"italic":false,"translate":"item.minecraft.paper.tooltip3"}','{"italic":false,"translate":"item.minecraft.paper.tooltip4"}','{"italic":false,"translate":"item.minecraft.paper.tooltip5"}','{"italic":false,"translate":"item.minecraft.paper.tooltip6"}','{"italic":false,"translate":"item.minecraft.paper.tooltip7"}','{"italic":false,"translate":"item.minecraft.paper.tooltip8"}','{"italic":false,"translate":"item.minecraft.paper.tooltip9"}']}}

#execute at @p[nbt={SelectedItem:{tag:{displayPreset:{Lore:[{text:"CUSTOM_TOOLTIP1"}]}}}}] run data merge storage more_nbt:global_storage {displayPreset:{Lore:['{"italic":false,"translate":"item.minecraft.paper.CUSTOM_TOOLTIP1"}']}}

# stone{displayPreset:{Lore:[{type:"item",text:"CUSTOM_TOOLTIP1",add:".addition",useID:true}]}} -> "item.custom:custom_item.addition"
# stone{id:"custom:custom_item",displayPreset:{Lore:[{type:"item",text:"CUSTOM_TOOLTIP1",add:".addition",useCustomID:false}]}} -> "item.custom:custom_item.addition"

# /execute store result storage more_nbt:global_storage displayPreset.Lore int 1 run data get entity @p SelectedItem.tag.displayPreset.Lore[0]

#execute at @p[nbt={SelectedItem:{tag:{displayPreset:{Lore:[{useID:true}]}}}}] run say [id].[tag.displayPreset.Lore[0].CUSTOM_CUSTOM_TOOLTIP1]
#execute at @p[nbt={SelectedItem:{tag:{displayPreset:{Lore:[{useID:false}]}}}}] run say [tag.displayPreset.Lore[0].CUSTOM_CUSTOM_TOOLTIP1]

#execute at @p[nbt={SelectedItem:{tag:{displayPreset:{Lore:[{useCustomID:true}]}}}}] run say [tag.id].[tag.displayPreset.Lore[0].CUSTOM_CUSTOM_TOOLTIP1]

# apply storage to item, optional remove tag, then reset
execute at @p[nbt={SelectedItem:{tag:{display_preset:{}}}}] run item entity @p weapon.mainhand modify more_nbt:display_preset
execute at @p[nbt={SelectedItem:{tag:{display_preset:{}}}}] run data remove storage more_nbt:global_storage displayPreset.Lore
execute at @p[nbt={SelectedItem:{tag:{display_preset:{}}}}] run data remove storage more_nbt:global_storage displayPreset.Name
#execute at @p[nbt={SelectedItem:{tag:{displayPreset:{removeTag:1b}}}}] run item entity @p weapon.mainhand modify more_nbt:display_preset