import mods.embers.EmberBore;
import mods.embers.Melter;
import mods.embers.Stamper;
import mods.embers.Mixer;
import mods.embers.HeatCoil;
import mods.embers.Alchemy;
import mods.embers.DawnstoneAnvil;
import mods.embers.EmberGeneration;

print("Запуск скрипта embers.zs");

# Ancient Codex

recipes.remove(<embers:codex>);
recipes.addShaped(<embers:codex>, [
    [<thaumcraft:stone_arcane>, <thaumcraft:scribing_tools>, <thaumcraft:stone_arcane>],
    [<embers:archaic_brick>, <minecraft:book>, <embers:archaic_brick>],
    [<thaumcraft:stone_arcane>, <embers:ancient_motive_core>, <thaumcraft:stone_arcane>]
]);

# Tinker's Hammer

recipes.remove(<embers:tinker_hammer>);
recipes.addShaped(<embers:tinker_hammer>, [
    [<ore:plateIron>, <ore:plateLead>, <ore:plateIron>],
    [<ore:plateIron>, <ore:stickWood>, <ore:plateIron>],
    [null, <ore:stickWood>, null]
]);

# Caminite Blend

recipes.remove(<embers:blend_caminite>);
recipes.addShapeless(<embers:blend_caminite> * 4, [
    <ore:sand>, <ore:itemClay>, <ore:itemClay>, <ore:itemClay>, <ore:itemClay>
]);

# Ember Dial

recipes.remove(<embers:ember_gauge>);
recipes.addShaped(<embers:ember_gauge>, [
    [<ore:plateLead>, <ore:plateCopper>, <ore:plateLead>],
    [<ore:plateCopper>, <minecraft:redstone_torch>, <ore:plateCopper>],
    [<ore:plateLead>, <ore:plateCopper>, <ore:plateLead>]
]);

# Fluid Dial

recipes.remove(<embers:fluid_gauge>);
recipes.addShaped(<embers:fluid_gauge>, [
    [<ore:plateLead>, <ore:plateIron>, <ore:plateLead>],
    [<ore:plateIron>, <minecraft:redstone_torch>, <ore:plateIron>],
    [<ore:plateLead>, <ore:plateIron>, <ore:plateLead>]
]);

# Atmospheric Gauge

recipes.remove(<embers:ember_detector>);
recipes.addShaped(<embers:ember_detector>, [
    [null, <ore:plateIron>, null],
    [<ore:plateCopper>, <embers:ember_gauge>, <ore:plateCopper>],
    [<ore:plateCopper>, <ore:plateIron>, <ore:plateCopper>]
]);

# Tinker's Lens

recipes.remove(<embers:tinker_lens>);
recipes.addShaped(<embers:tinker_lens>, [
    [<ore:nuggetLead>, <ore:plateLead>, null],
    [<ore:plateLead>, <astralsorcery:itemcraftingcomponent:3>, <ore:plateLead>],
    [<ore:nuggetLead>, <ore:plateLead>, null]
]);

# Fluid Tank

recipes.remove(<embers:block_tank>);
recipes.addShaped(<embers:block_tank>, [
    [<ore:plateIron>, null, <ore:plateIron>],
    [<embers:plate_caminite>, null, <embers:plate_caminite>],
    [<ore:plateIron>, <ore:plateLead>, <ore:plateIron>]
]);

# Bin

recipes.remove(<embers:bin>);
recipes.addShaped(<embers:bin>, [
    [<ore:plateIron>, null, <ore:plateIron>],
    [<ore:plateIron>, null, <ore:plateIron>],
    [<embers:plate_caminite>, <ore:plateIron>, <embers:plate_caminite>]
]);

# Reservoir

recipes.remove(<embers:large_tank>);
recipes.addShaped(<embers:large_tank>, [
    [<embers:block_caminite_brick>, <embers:plate_caminite>, <embers:block_caminite_brick>],
    [<ore:plateIron>, <embers:block_tank>, <ore:plateIron>],
    [<embers:block_caminite_brick>, <embers:plate_caminite>, <embers:block_caminite_brick>]
]);

# Item Vacuum

recipes.remove(<embers:vacuum>);
recipes.addShaped(<embers:vacuum>, [
    [<ore:plateLead>, null, <ore:plateLead>],
    [<ore:plateLead>, <ore:plateIron>, <ore:plateLead>],
    [null, <embers:item_pipe>, null]
]);



print("Выключение скрипта embers.zs");