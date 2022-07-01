import mods.bloodmagic.AlchemyTable;
import mods.contenttweaker.VanillaFactory;

print("Запуск скрипта psi.zs");

# Пси пыль

mods.bloodmagic.AlchemyTable.addRecipe(<minecraft:diamond>, [<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>], 20,10,0);

mods.bloodmagic.AlchemyTable.addRecipe(<psi:material>, 
    [<contenttweaker:arc_rune>, <ore:elvenPixieDust>, <thaumcraft:salis_mundus>, <bloodmagic:component:8>, <ore:dustAstralStarmetal>], 2000, 200, 1);

# CAD собиратель

recipes.remove(<psi:cad_assembler>);
recipes.addShaped(<psi:cad_assembler>, [
    [<ore:plateVoid>, <astralsorcery:iteminfusedglass>.withTag({astralsorcery: {}}), <ore:plateVoid>],
    [<contenttweaker:arcane_circuit>, <ore:dustPsi>, <contenttweaker:arcane_circuit>], 
    [<botania:storage:1>, <thaumcraft:wand_workbench>, <botania:storage:1>]]);

# Создатель заклинаний

recipes.remove(<psi:programmer>);
recipes.addShaped(<psi:programmer>, [
    [<astralsorcery:iteminfusedglass>.withTag({astralsorcery: {}}), <thaumcraft:infusion_matrix>, <astralsorcery:iteminfusedglass>.withTag({astralsorcery: {}})],
    [<thaumcraft:morphic_resonator>, <contenttweaker:arcane_circuit>, <thaumcraft:vis_resonator>], 
    [<thaumcraft:metal_thaumium>, <ore:dustPsi>, <thaumcraft:metal_thaumium>]]);

# Железный CAD

recipes.remove(<psi:cad_assembly>);
recipes.addShaped(<psi:cad_assembly>, [
    [<botania:manatablet>.withTag({}), <contenttweaker:arcane_circuit>, <thaumcraft:vis_resonator>],
    [<embers:focal_lens>, <thaumcraft:mechanism_complex>, null], 
    [<ore:plateIron>, null, null]]);

# Золотой CAD

recipes.remove(<psi:cad_assembly:1>);
recipes.addShaped(<psi:cad_assembly:1>, [
    [<botania:manatablet>.withTag({}), <contenttweaker:arcane_circuit>, <thaumcraft:vis_resonator>],
    [<embers:focal_lens>, <thaumcraft:mechanism_complex>, null], 
    [<ore:plateGold>, null, null]]);

# Пси-металлический CAD

recipes.remove(<psi:cad_assembly:2>);
recipes.addShaped(<psi:cad_assembly:2>, [
    [<contenttweaker:psi_iron_plate>, <contenttweaker:arcane_circuit>, <thaumadditions:mithrillium_resonator>],
    [<embers:focal_lens>, <botania:manatablet>.withTag({}), <thaumicwands:item_primal_charm>], 
    [<thaumicwands:item_wand_cap:6>, <contenttweaker:arcane_circuit>, null]]);

# Пси-металлический CAD (темный)

recipes.remove(<psi:cad_assembly:3>);
recipes.addShaped(<psi:cad_assembly:3>, [
    [<contenttweaker:psi_ebony_plate>, <contenttweaker:arcane_circuit>, <thaumadditions:mithrillium_resonator>],
    [<embers:focal_lens>, <botania:manatablet>.withTag({}), <thaumicwands:item_primal_charm>], 
    [<thaumicwands:item_wand_cap:6>, <contenttweaker:arcane_circuit>, null]]);

# Пси-металлический CAD (светлый)

recipes.remove(<psi:cad_assembly:4>);
recipes.addShaped(<psi:cad_assembly:4>, [
    [<contenttweaker:psi_ivory_plate>, <contenttweaker:arcane_circuit>, <thaumadditions:mithrillium_resonator>],
    [<embers:focal_lens>, <botania:manatablet>.withTag({}), <thaumicwands:item_primal_charm>], 
    [<thaumicwands:item_wand_cap:6>, <contenttweaker:arcane_circuit>, null]]);

# Basic CAD socket

recipes.remove(<psi:cad_socket>);
recipes.addShaped(<psi:cad_socket>, [
    [<ore:plateIron>, <ore:plateIron, <ore:plateIron>],
    [<ore:dustPsi>, <contenttweaker:arcane_circuit>, <ore:dustPsi>], 
    [<ore:plateIron>, <ore:plateIron, <ore:plateIron>]]);

# Signaling CAD socket

recipes.remove(<psi:cad_socket:1>);
recipes.addShaped(<psi:cad_socket:1>, [
    [<ore:plateIron>, <ore:plateThaumium>, <ore:plateIron>],
    [<ore:dustPsi>, <contenttweaker:arcane_circuit>, <ore:dustPsi>], 
    [<ore:plateIron>, <ore:plateThaumium>, <ore:plateIron>]]);

# Large CAD socket

recipes.remove(<psi:cad_socket:2>);
recipes.addShaped(<psi:cad_socket:2>, [
    [<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>],
    [<ore:gemPsi>, <contenttweaker:arcane_circuit>, <ore:gemPsi>], 
    [<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>]]);

# Transmissive CAD socket

recipes.remove(<psi:cad_socket:3>);
recipes.addShaped(<psi:cad_socket:3>, [
    [<contenttweaker:psi_iron_plate>, <contenttweaker:psi_iron_plate>, <contenttweaker:psi_iron_plate>],
    [<ore:gemPsi>, <contenttweaker:arcane_circuit>, <ore:gemPsi>], 
    [<contenttweaker:psi_iron_plate>, <contenttweaker:psi_iron_plate>, <contenttweaker:psi_iron_plate>]]);

# Huge CAD socket

recipes.remove(<psi:cad_socket:4>);
recipes.addShaped(<psi:cad_socket:4>, [
    [<contenttweaker:psi_iron_plate>, <contenttweaker:psi_iron_plate>, <contenttweaker:psi_iron_plate>],
    [<ore:gemPsi>, <contenttweaker:arcane_circuit>, <ore:gemPsi>], 
    [<contenttweaker:psi_iron_plate>, <contenttweaker:psi_iron_plate>, <contenttweaker:psi_iron_plate>]]);

###########################################

# Basic CAD core

recipes.remove(<psi:cad_core>);
recipes.addShaped(<psi:cad_core>, [
    [<ore:plateIron>, <ore:dustPsi>, <ore:plateIron>],
    [<ore:plateIron>, <contenttweaker:arcane_circuit>, <ore:plateIron>], 
    [<ore:plateIron>, <ore:dustPsi>, <ore:plateIron>]]);

# Overclocked CAD core

recipes.remove(<psi:cad_core:1>);
recipes.addShaped(<psi:cad_core:1>, [
    [<ore:plateIron>, <ore:dustPsi>, <ore:plateIron>],
    [<ore:plateThaumium>, <contenttweaker:arcane_circuit>, <ore:plateThaumium>], 
    [<ore:plateIron>, <ore:dustPsi>, <ore:plateIron>]]);

# Conductive CAD core

recipes.remove(<psi:cad_core:2>);
recipes.addShaped(<psi:cad_core:2>, [
    [<ore:plateThaumium>, <ore:dustPsi>, <ore:plateThaumium>],
    [<ore:plateThaumium>, <contenttweaker:arcane_circuit>, <ore:plateThaumium>], 
    [<ore:plateThaumium>, <ore:dustPsi>, <ore:plateThaumium>]]);

# Hyperclocked CAD core

recipes.remove(<psi:cad_core:3>);
recipes.addShaped(<psi:cad_core:3>, [
    [<ore:plateThaumium>, <ore:gemPsi>, <ore:plateThaumium>],
    [<contenttweaker:psi_iron_plate>, <contenttweaker:arcane_circuit>, <contenttweaker:psi_iron_plate>], 
    [<ore:plateThaumium>, <ore:gemPsi>, <ore:plateThaumium>]]);

# Radiative CAD core

recipes.remove(<psi:cad_core:3>);
recipes.addShaped(<psi:cad_core:3>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<contenttweaker:psi_iron_plate>, <contenttweaker:arcane_circuit>, <contenttweaker:psi_iron_plate>], 
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>]]);

################################

# Basic CAD Battery

recipes.remove(<psi:cad_battery>);
recipes.addShaped(<psi:cad_battery>, [
    [<ore:plateThaumium>, <ore:dustPsi>, <ore:plateThaumium>],
    [<ore:plateBrass>, <botania:manatablet>.withTag({}), <ore:plateBrass>], 
    [<ore:plateThaumium>, <contenttweaker:arcane_circuit>, <ore:plateThaumium>]]);

# Extended CAD Battery

recipes.remove(<psi:cad_battery:1>);
recipes.addShaped(<psi:cad_battery:1>, [
    [<contenttweaker:psi_iron_plate>, <ore:dustPsi>, <contenttweaker:psi_iron_plate>],
    [<ore:plateThaumium>, <botania:manatablet>.withTag({}), <ore:plateThaumium>], 
    [<contenttweaker:psi_iron_plate>, <contenttweaker:arcane_circuit>, <contenttweaker:psi_iron_plate>]]);

# Ultradense CAD Battery

recipes.remove(<psi:cad_battery:1>);
recipes.addShaped(<psi:cad_battery:1>, [
    [<contenttweaker:psi_iron_plate>, <ore:dustPsi>, <contenttweaker:psi_iron_plate>],
    [<contenttweaker:psi_iron_plate>, <botania:manatablet>.withTag({}), <contenttweaker:psi_iron_plate>], 
    [<contenttweaker:psi_iron_plate>, <contenttweaker:arcane_circuit>, <contenttweaker:psi_iron_plate>]]);

##################################

# Цветные фиговины

recipes.remove(<psi:cad_colorizer_>);
recipes.addShaped(<psi:cad_colorizer_>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<minecraft:glass_pane>, <botania:manatablet>.withTag({}), <minecraft:glass_pane>], 
    [<contenttweaker:psi_iron_plate>, <botania:dye>, <contenttweaker:psi_iron_plate>]]);

recipes.remove(<psi:cad_colorizer_:1>);
recipes.addShaped(<psi:cad_colorizer_:1>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<minecraft:glass_pane>, <botania:manatablet>.withTag({}), <minecraft:glass_pane>], 
    [<contenttweaker:psi_iron_plate>, <botania:dye:1>, <contenttweaker:psi_iron_plate>]]);

recipes.remove(<psi:cad_colorizer_:2>);
recipes.addShaped(<psi:cad_colorizer_:2>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<minecraft:glass_pane>, <botania:manatablet>.withTag({}), <minecraft:glass_pane>], 
    [<contenttweaker:psi_iron_plate>, <botania:dye:3>, <contenttweaker:psi_iron_plate>]]);

recipes.remove(<psi:cad_colorizer_:3>);
recipes.addShaped(<psi:cad_colorizer_:3>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<minecraft:glass_pane>, <botania:manatablet>.withTag({}), <minecraft:glass_pane>], 
    [<contenttweaker:psi_iron_plate>, <botania:dye:3>, <contenttweaker:psi_iron_plate>]]);

recipes.remove(<psi:cad_colorizer_:4>);
recipes.addShaped(<psi:cad_colorizer_:4>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<minecraft:glass_pane>, <botania:manatablet>.withTag({}), <minecraft:glass_pane>], 
    [<contenttweaker:psi_iron_plate>, <botania:dye:4>, <contenttweaker:psi_iron_plate>]]);

recipes.remove(<psi:cad_colorizer_:5>);
recipes.addShaped(<psi:cad_colorizer_:5>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<minecraft:glass_pane>, <botania:manatablet>.withTag({}), <minecraft:glass_pane>], 
    [<contenttweaker:psi_iron_plate>, <botania:dye:5>, <contenttweaker:psi_iron_plate>]]);

recipes.remove(<psi:cad_colorizer_:6>);
recipes.addShaped(<psi:cad_colorizer_:6>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<minecraft:glass_pane>, <botania:manatablet>.withTag({}), <minecraft:glass_pane>], 
    [<contenttweaker:psi_iron_plate>, <botania:dye:6>, <contenttweaker:psi_iron_plate>]]);

recipes.remove(<psi:cad_colorizer_:7>);
recipes.addShaped(<psi:cad_colorizer_:7>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<minecraft:glass_pane>, <botania:manatablet>.withTag({}), <minecraft:glass_pane>], 
    [<contenttweaker:psi_iron_plate>, <botania:dye:7>, <contenttweaker:psi_iron_plate>]]);

recipes.remove(<psi:cad_colorizer_:8>);
recipes.addShaped(<psi:cad_colorizer_:8>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<minecraft:glass_pane>, <botania:manatablet>.withTag({}), <minecraft:glass_pane>], 
    [<contenttweaker:psi_iron_plate>, <botania:dye:8>, <contenttweaker:psi_iron_plate>]]);

recipes.remove(<psi:cad_colorizer_:9>);
recipes.addShaped(<psi:cad_colorizer_:9>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<minecraft:glass_pane>, <botania:manatablet>.withTag({}), <minecraft:glass_pane>], 
    [<contenttweaker:psi_iron_plate>, <botania:dye:9>, <contenttweaker:psi_iron_plate>]]);

recipes.remove(<psi:cad_colorizer_:10>);
recipes.addShaped(<psi:cad_colorizer_:10>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<minecraft:glass_pane>, <botania:manatablet>.withTag({}), <minecraft:glass_pane>], 
    [<contenttweaker:psi_iron_plate>, <botania:dye:10>, <contenttweaker:psi_iron_plate>]]);

recipes.remove(<psi:cad_colorizer_:11>);
recipes.addShaped(<psi:cad_colorizer_:11>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<minecraft:glass_pane>, <botania:manatablet>.withTag({}), <minecraft:glass_pane>], 
    [<contenttweaker:psi_iron_plate>, <botania:dye:11>, <contenttweaker:psi_iron_plate>]]);

recipes.remove(<psi:cad_colorizer_:12>);
recipes.addShaped(<psi:cad_colorizer_:12>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<minecraft:glass_pane>, <botania:manatablet>.withTag({}), <minecraft:glass_pane>], 
    [<contenttweaker:psi_iron_plate>, <botania:dye:12>, <contenttweaker:psi_iron_plate>]]);

recipes.remove(<psi:cad_colorizer_:13>);
recipes.addShaped(<psi:cad_colorizer_:13>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<minecraft:glass_pane>, <botania:manatablet>.withTag({}), <minecraft:glass_pane>], 
    [<contenttweaker:psi_iron_plate>, <botania:dye:13>, <contenttweaker:psi_iron_plate>]]);

recipes.remove(<psi:cad_colorizer_:14>);
recipes.addShaped(<psi:cad_colorizer_:14>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<minecraft:glass_pane>, <botania:manatablet>.withTag({}), <minecraft:glass_pane>], 
    [<contenttweaker:psi_iron_plate>, <botania:dye:14>, <contenttweaker:psi_iron_plate>]]);

recipes.remove(<psi:cad_colorizer_:15>);
recipes.addShaped(<psi:cad_colorizer_:15>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<minecraft:glass_pane>, <botania:manatablet>.withTag({}), <minecraft:glass_pane>], 
    [<contenttweaker:psi_iron_plate>, <botania:dye:15>, <contenttweaker:psi_iron_plate>]]);

recipes.remove(<psi:cad_colorizer_:16>);
recipes.addShaped(<psi:cad_colorizer_:16>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<botania:bifrostpermpane>, <botania:manatablet>.withTag({}), <botania:bifrostpermpane>], 
    [<contenttweaker:psi_iron_plate>, <contenttweaker:luxumia_extract>, <contenttweaker:psi_iron_plate>]]);

#########################################


print("Выключение скрипта psi.zs");