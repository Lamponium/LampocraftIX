import mods.arcanearchives.GCT;
import mods.thaumcraft.ArcaneWorkbench;
import mods.astralsorcery.Altar;
import mods.thaumcraft.SalisMundus;

print("Запуск скрипта arcaneArchives.zs");

# Кварц

mods.thaumcraft.SalisMundus.addSingleConversion(<botania:quartztypesunny>, <arcanearchives:raw_quartz_cluster>);



# Gem Cutter's Table

recipes.remove(<arcanearchives:gemcutters_table>);
recipes.addShaped(<arcanearchives:gemcutters_table>, [
    [<astralsorcery:blockmachine:1>, <astralsorcery:itemcraftingcomponent:3>, <astralsorcery:itemknowledgeshare>.withTag({astralsorcery: {}})],
    [<astralsorcery:blockinfusedwood:1>, <thaumcraft:arcane_workbench>, <astralsorcery:blockinfusedwood:1>],
    [<ore:nuggetGold>, <astralsorcery:blockinfusedwood:3>, <ore:nuggetGold>]
]);

##################################################### Уборка и замена рецептов #####################################################

# Кварц уровень 2

GCT.replaceRecipe("shaped_quartz", <arcanearchives:shaped_quartz>, [
      <arcanearchives:raw_quartz>*4, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), <astralsorcery:itemusabledust>*2
    ]);

GCT.removeRecipe(<arcanearchives:writ_expulsion>);
GCT.removeRecipe(<arcanearchives:letter_resignation>);
GCT.removeRecipe(<arcanearchives:letter_invitation>);

GCT.removeRecipe(<arcanearchives:brazier_of_hoarding>);
GCT.removeRecipe(<arcanearchives:radiant_tank>);
GCT.removeRecipe(<arcanearchives:radiant_trove>);

##################################################### Обычные рецепты #######################################################


mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("letter_invitation", "", 25, [<aspect:ordo>], <arcanearchives:letter_invitation>, [<thaumcraft:scribing_tools>, <arcanearchives:radiant_dust>, <astralsorcery:itemknowledgeshare>.withTag({astralsorcery: {}}), <ore:quartzMana>]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("writ_expulsion", "", 25, [<aspect:ordo>], <arcanearchives:writ_expulsion>, [<thaumcraft:scribing_tools>, <arcanearchives:radiant_dust>, <astralsorcery:itemknowledgeshare>.withTag({astralsorcery: {}}), <ore:quartzBlaze>]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("letter_resignation", "", 25, [<aspect:ordo>], <arcanearchives:letter_resignation>, [<thaumcraft:scribing_tools>, <arcanearchives:radiant_dust>, <astralsorcery:itemknowledgeshare>.withTag({astralsorcery: {}}), <ore:quartzRed>]);

recipes.remove(<arcanearchives:radiant_resonator>);
recipes.addShaped(<arcanearchives:radiant_resonator>, [
    [<ore:plateBrass>, <arcanearchives:shaped_quartz>, <ore:plateBrass>],
    [<astralsorcery:blockinfusedwood:1>, <liquid:astralsorcery.liquidstarlight>, <astralsorcery:blockinfusedwood:1>],
    [<astralsorcery:blockinfusedwood:1>, null, <astralsorcery:blockinfusedwood:1>]
]);

# Brazier of Hoarding

mods.astralsorcery.Altar.addAttunementAltarRecipe("LampocraftIX:shaped/internal/altar/brazier_of_hoarding", <arcanearchives:brazier_of_hoarding>, 500, 300, [
			<ore:plateBrass>, <ore:blockCoal>, <ore:plateBrass>,
			<astralsorcery:blockinfusedwood:1>, <thaumcraft:mirror>, <astralsorcery:blockinfusedwood:1>,
			<astralsorcery:blockinfusedwood:1>, null, <astralsorcery:blockinfusedwood:1>,
			<arcanearchives:radiant_dust>, <arcanearchives:radiant_dust>, <arcanearchives:radiant_dust>, <arcanearchives:radiant_dust>]);

# Radiant Tank

mods.astralsorcery.Altar.addAttunementAltarRecipe("LampocraftIX:shaped/internal/altar/radiant_tank", <arcanearchives:radiant_tank>, 500, 300, [
			<ore:plateGold>, <arcanearchives:containment_field>, <ore:plateGold>,
			<arcanearchives:containment_field>, <arcanearchives:shaped_quartz>, <arcanearchives:containment_field>,
			<ore:plateGold>, <arcanearchives:containment_field>, <ore:plateGold>,
			<arcanearchives:radiant_dust>, <arcanearchives:radiant_dust>, <arcanearchives:radiant_dust>, <arcanearchives:radiant_dust>]);

# Radiant Trove

mods.astralsorcery.Altar.addAttunementAltarRecipe("LampocraftIX:shaped/internal/altar/radiant_trove", <arcanearchives:radiant_trove>, 500, 300, [
			<ore:plateGold>, <arcanearchives:material_interface>, <ore:plateGold>,
			<arcanearchives:containment_field>, <arcanearchives:shaped_quartz>, <arcanearchives:containment_field>,
			<ore:plateGold>, <arcanearchives:matrix_brace>, <ore:plateGold>,
			<arcanearchives:radiant_dust>, <arcanearchives:radiant_dust>, <arcanearchives:radiant_dust>, <arcanearchives:radiant_dust>]);

# Radiant Crafting Table

recipes.remove(<arcanearchives:radiant_crafting_table>);
mods.thaumcraft.SalisMundus.addSingleConversion(<astralsorcery:blockaltar>, <arcanearchives:radiant_crafting_table>);

# Radiant Chest

recipes.remove(<arcanearchives:radiant_chest>);
recipes.addShaped(<arcanearchives:radiant_chest>, [
    [<ore:plateGold>, <arcanearchives:containment_field>, <ore:plateGold>],
    [<astralsorcery:blockinfusedwood>, <arcanearchives:raw_quartz>, <astralsorcery:blockinfusedwood>],
    [<ore:plateGold>, <arcanearchives:containment_field>, <ore:plateGold>]
]);

##################################################### Новые Рецепты в Столе ##################################################

GCT.addRecipe("quartzLavender", <botania:quartz:3>, [<botania:quartz:1>, <arcanearchives:radiant_dust>*2, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alienis"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "auram"}]})]);
GCT.addRecipe("quartzBlaze", <botania:quartz:2>, [<botania:quartz:1>, <arcanearchives:radiant_dust>*2, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]})]);
GCT.addRecipe("quartzRed", <botania:quartz:4>, [<botania:quartz:1>, <arcanearchives:radiant_dust>*2, <contenttweaker:luxumia_extract>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "sol"}]}), <minecraft:redstone>]);
GCT.addRecipe("quartzSunny", <botania:quartz:6>, [<botania:quartz:1>, <arcanearchives:radiant_dust>*2, <contenttweaker:luxumia_extract>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "sol"}]})]);

##################################################### Runecarving ############################################################

# TODO




print("Выключение скрипта arcaneArchives.zs");