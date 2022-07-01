import mods.astralsorcery.Altar;

print("Запуск скрипта stardustRecipes");

# Warp Stone

recipes.remove(<waystones:warp_stone>);
mods.astralsorcery.Altar.addConstellationAltarRecipe("LampocraftIX:shaped/internal/altar/warp_stone", <waystones:warp_stone>, 1000, 10, [
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "motus"}]}), <ore:manaPearl>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "motus"}]}),
    <ore:manaPearl>, <ore:blockPsiGem>, <ore:manaPearl>,
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "motus"}]}), <ore:manaPearl>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "motus"}]}),
    null, null,
    null, null,
    <ore:quartzLavender>, <ore:quartzLavender>,
    <ore:quartzLavender>, <ore:quartzLavender>,
    <ore:quartzLavender>, <ore:quartzLavender>,
    <ore:quartzLavender>, <ore:quartzLavender>
]);

# Waystone

recipes.remove(<waystones:waystone>);
mods.astralsorcery.Altar.addTraitAltarRecipe("LampocraftIX:shaped/internal/altar/waystone", <waystones:waystone>, 4500, 100, [
	<bloodmagic:blood_rune:5>, <thaumcraft:vis_resonator>, <bloodmagic:blood_rune:5>,
    <contenttweaker:arc_rune>, <astralsorcery:blockcelestialgateway>, <contenttweaker:arc_rune>,
    <thaumcraft:infusion_matrix>, <waystones:warp_stone>, <thaumcraft:infusion_matrix>,
    null, null,
    <thaumcraft:stone_arcane_brick>, <thaumcraft:stone_arcane_brick>,
    <bloodmagic:blood_rune>, <bloodmagic:blood_rune>,
    null, null,
    <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>,
    <thaumcraft:stone_arcane_brick>, <thaumcraft:stone_arcane_brick>,
    <thaumcraft:mechanism_complex>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <arcanearchives:storage_shaped_quartz>
],
"astralsorcery.constellation.vicio");







print("Выключение скрипта stardustRecipes");