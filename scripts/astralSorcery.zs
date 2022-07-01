import mods.astralsorcery.Altar;
import mods.astralsorcery.Lightwell;
import mods.astralsorcery.Utils;
import mods.astralsorcery.LightTransmutation;
import mods.astralsorcery.StarlightInfusion;

print("Запуск скрипта astralSorcery.zs");

# Журнал знаний

mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/journal");
recipes.remove(<astralsorcery:itemjournal>);
recipes.addShapeless(<astralsorcery:itemjournal>, 
    [<minecraft:book>, <thaumcraft:scribing_tools>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "tenebrae"}]}), 
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]})]);

# Алтарь (уровень 1)

recipes.remove(<astralsorcery:blockaltar>);
recipes.addShaped(<astralsorcery:blockaltar>, [
    [<astralsorcery:blockmarble:1>,<minecraft:stained_glass_pane:15>,<astralsorcery:blockmarble:1>],
    [<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]}),<thaumcraft:mirrored_glass>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "tenebrae"}]})],
    [<botania:livingwood:1>,<thaumcraft:arcane_workbench>,<botania:livingwood:1>]]);

# Алтарь (уровень 2) <liquid:astralsorcery.liquidstarlight>

	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2");
	mods.astralsorcery.Altar.addDiscoveryAltarRecipe("LampocraftIX:shaped/internal/altar/upgrade_tier2",
		<astralsorcery:blockaltar:1>, 350, 100, [
            <astralsorcery:blockmarble:2>, <astralsorcery:itemrockcrystalsimple>.anyDamage(), <astralsorcery:blockmarble:2>,
			<astralsorcery:blockmarble:4>, <contenttweaker:luxumia_extract>, <astralsorcery:blockmarble:4>, 
			<astralsorcery:blockmarble:2>, <ore:nitor>, <astralsorcery:blockmarble:2>]);

# Алтарь (уровень 3)
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier3");
	mods.astralsorcery.Altar.addAttunementAltarRecipe("LampocraftIX:shaped/internal/altar/upgrade_tier3",
		<astralsorcery:blockaltar:2>, 600, 300, [
            <ore:manaDiamond>, <ore:gemAquamarine>, <ore:manaDiamond>,
            <thaumcraft:mirrored_glass>, <astralsorcery:itemrockcrystalsimple>.anyDamage(), <thaumcraft:mirrored_glass>,
            <astralsorcery:blockmarble:6>, <thaumcraft:pedestal_arcane>, <astralsorcery:blockmarble:6>,
            <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "stellae"}]}),
            <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alienis"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "tenebrae"}]})]);

# Iridescent Altar
	mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier4");
	mods.astralsorcery.Altar.addConstellationAltarRecipe("LampocraftIX:shaped/internal/altar/upgrade_tier4",
		<astralsorcery:blockaltar:3>, 3250, 200, [
            <contenttweaker:arc_rune>, <astralsorcery:itemcoloredlens:6>, <contenttweaker:arc_rune>,
            <astralsorcery:blockblackmarble:2>, <contenttweaker:luxumia_extract>, <astralsorcery:blockblackmarble:2>,
            <astralsorcery:blockmarble:6>, <thaumcraft:vis_resonator>, <astralsorcery:blockmarble:6>,
            <thaumcraft:infusion_matrix>, <thaumcraft:infusion_matrix>,
            <astralsorcery:blockblackmarble:6>, <astralsorcery:blockblackmarble:6>,
            <thaumcraft:mirrored_glass>, <thaumcraft:mirrored_glass>,
            <contenttweaker:cholus_rune>, <contenttweaker:murtosis_rune>,
            <contenttweaker:murtosis_rune>, <contenttweaker:cholus_rune>,
            <botania:storage:1>, <botania:storage:1>
        ]);

# Резонирующая палочка <arcanearchives:storage_raw_quartz>

recipes.remove(<astralsorcery:itemwand>);
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_basicwand");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/tool_basicwand", <astralsorcery:itemwand>.withTag({astralsorcery: {}}), 250, 125,
[null , <ore:gemAquamarine>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]}),
null, <ore:ingotManasteel>, <ore:gemAquamarine>,
<ore:manaDiamond>, null, null]);

# Кварц

# mods.astralsorcery.LightTransmutation.addTransmutation(<ore:blockQuartzSunny>, <arcanearchives:storage_raw_quartz>, 10);
//mods.astralsorcery.LightTransmutation.addTransmutation(IItemStack stackIn, IItemStack stackOut, double cost);
mods.astralsorcery.LightTransmutation.addTransmutation(<minecraft:grass>, <minecraft:gold_ore>, 10);

print("Выключение скрипта astralSorcery.zs");