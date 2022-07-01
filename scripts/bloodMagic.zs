import mods.bloodmagic.AlchemyTable;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.AlchemyArray;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.astralsorcery.Altar;

print("Запуск скрипта bloodMagic.zs");

# No Grass crafting in the Alchemy Table
mods.bloodmagic.AlchemyTable.removeRecipe([<minecraft:dirt:*>,<minecraft:dye:15>,<minecraft:wheat_seeds>]);

# No Cutting Fluid recipes
var allOres = [<ore:oreSaltpeter>,<ore:oreSalt>,<ore:oreSilver>,<ore:oreLead>,<ore:oreDilithium>,<ore:oreRedstone>,<ore:oreCertusQuartz>,<ore:oreDraconium>,
<ore:oreSilicon>,<ore:oreIron>,<ore:oreNickel>,<ore:oreTitanium>,<ore:oreOsmium>,<ore:oreAstralStarmetal>,<ore:oreAbyssalnite>,<ore:oreCopper>,<ore:oreGold>,
<ore:oreIridium>,<ore:oreLead>,<ore:oreQuartz>,<ore:oreYellorite>,<ore:oreLapis>,<ore:oreAluminium>,<ore:oreAluminum>,<ore:oreMithril>,
<ore:oreLiquifiedCoralium>,<ore:oreTin>,<ore:oreDiamond>,<ore:oreQuartzBlack>,<ore:oreEmerald>,<ore:oreCoal>,<ore:orePlatinum>,<ore:oreNetherEmerald>,
<ore:oreNetherDiamond>,<ore:oreNetherRedstone>,<ore:oreNetherLapis>,<ore:oreNetherCoal>,<ore:oreNetherGold>,<ore:oreNetherIron>,
<ore:oreNetherCopper>,<ore:oreNetherTin>, <ore:oreTungsten>, <ore:oreZinc>, <ore:oreThorium>, <ore:oreUranium>, <ore:orePhosphorous>, <ore:oreFluorite>, 
<ore:oreLithium>, <ore:oreMagnesium>] as IIngredient[];

for oreDict in allOres {
	for ore in oreDict.items {
		mods.bloodmagic.AlchemyTable.removeRecipe([ore, <bloodmagic:cutting_fluid>]);
	}
}

# Алтарь крови

recipes.remove(<bloodmagic:altar>);
mods.astralsorcery.Altar.addConstellationAltarRecipe("LampocraftIX:shaped/internal/altar/bloodmagic_altar", <bloodmagic:altar>, 1750, 15, [
		<bewitchment:pentacle>, <thaumcraft:crucible>, <bewitchment:pentacle>,
        <thaumcraft:stone_arcane>, <botania:pool>, <thaumcraft:stone_arcane>,
        <thaumcraft:stone_arcane>, <thaumcraft:pedestal_arcane>, <thaumcraft:stone_arcane>,
        <thaumcraft:curio:6>, <patchouli:guide_book>.withTag({"patchouli:book": "bewitchment:codex_infernalis"}),
        <thaumcraft:stone_arcane_brick>, <thaumcraft:stone_arcane_brick>,
        <patchouli:guide_book>.withTag({"patchouli:book": "bewitchment:book_of_shadows"}), <thaumicaugmentation:eldritch_lock_key:2>,
        null, null,
        <bewitchment:block_of_garnet>, <bewitchment:block_of_garnet>,
        <thaumcraft:stone_arcane_brick>, <thaumcraft:stone_arcane_brick>
    ]);

# Алхимический стол

recipes.remove(<bloodmagic:alchemy_table>);
recipes.addShaped(<bloodmagic:alchemy_table>, [
    [<ore:bVial>, <minecraft:carpet:14>, <bewitchment:distillery>],
    [<thaumcraft:slab_arcane_stone>, <thaumcraft:slab_arcane_stone>, <thaumcraft:slab_arcane_stone>], 
    [<thaumcraft:stone_arcane_brick>, <botania:alchemycatalyst>, <thaumcraft:stone_arcane_brick>]]);

# Orb tier 1
	mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:diamond>);
	mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), 
	<botania:manaresource:2>, 0, 2000, 12, 12);

# Orb tier 2
	mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:redstone_block>);
	mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), 
	<botania:manaresource:9>, 1, 5000, 25, 25);

# Orb tier 3
	mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:gold_block>);
	mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), 
	<thaumcraft:metal_thaumium>, 2, 25000, 50, 50);

# Orb tier 5
	mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:nether_star>);
	mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}), 
	<psi:material:2>, 4, 80000, 200, 200);

# Dagger of Sacrifice
	mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:iron_sword>);
	mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:dagger_of_sacrifice>, 
	<thaumcraft:thaumium_sword>, 1, 3000, 12, 12);

# Люксумия

mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:luxumia_extract>, [<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "lux"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "sol"}]}), <bewitchment:heaven_extract>, <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}), <botania:brewvial>.withTag({brewKey: "healing"}), <astralsorcery:itemcraftingcomponent:4>], 100,125,0);

# Зуробис

mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:zurobis_extract>, [<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "victus"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "diabolus"}]}), <bewitchment:fiery_unguent>, <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}), <botania:brewvial>.withTag({brewKey: "bloodthirst"}), <botania:quartz:4>], 100,125,0);

# Козумис

mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:cozumis_extract>, [<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "auram"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alienis"}]}), <bewitchment:otherworldly_tears>, <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}), <botania:brewvial>.withTag({brewKey: "nightVision"}), <astralsorcery:itemcraftingcomponent:4>], 100,125,0);

# Blank Slate

mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:stone>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate>, <thaumcraft:stone_arcane>, 0, 1000, 10, 10);

# Hellfire Forge
	recipes.remove(<bloodmagic:soul_forge>);
	recipes.addShaped("soul_forge", <bloodmagic:soul_forge>, 
	[[<botania:manaresource>, <ore:dustAstralStarmetal>, <botania:manaresource>], 
	[<thaumcraft:stone_arcane>, <ore:ingotBrass>, <thaumcraft:stone_arcane>], 
	[<thaumcraft:stone_arcane>, <botania:storage>, <thaumcraft:stone_arcane>]]);

# Reinforced Slate

# Imbued Slate

# Demonic Slate

# Ethereal Slate

print("Выключение скрипта bloodMagic.zs");