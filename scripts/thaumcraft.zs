import mods.thaumcraft.Infusion;
import mods.thaumcraft.SalisMundus;
#modloaded thaumcraft

print("Запуск скрипта thaumcraft.zs");

# Аспекты

# Contenttweaker

<contenttweaker:luxumia_extract>.setAspects(<aspect:alkimia>*20,<aspect:praecantatio>*15,<aspect:sol>*10,<aspect:lux>*18);
<contenttweaker:cozumis_extract>.setAspects(<aspect:alkimia>*20,<aspect:praecantatio>*15,<aspect:alienis>*12,<aspect:stellae>*15,<aspect:auram>*8);
<contenttweaker:zurobis_extract>.setAspects(<aspect:alkimia>*20,<aspect:praecantatio>*15,<aspect:victus>*10,<aspect:diabolus>*5);
<contenttweaker:solar_diamond>.setAspects(<aspect:sol>*10,<aspect:vitreus>*5,<aspect:praecantatio>*5);
<contenttweaker:arcane_circuit>.setAspects(<aspect:cognitio>*25,<aspect:machina>*12,<aspect:sensus>*18,<aspect:praecantatio>*20,<aspect:potentia>*5);

<contenttweaker:warus_rune>.setAspects(<aspect:cognitio>*8,<aspect:praecantatio>*6,<aspect:aversio>*12);
<contenttweaker:cholus_rune>.setAspects(<aspect:cognitio>*8,<aspect:praecantatio>*6,<aspect:vitium>*12);
<contenttweaker:murtosis_rune>.setAspects(<aspect:cognitio>*8,<aspect:praecantatio>*6,<aspect:mortuus>*12);
<contenttweaker:arc_rune>.setAspects(<aspect:cognitio>*8,<aspect:praecantatio>*6,<aspect:stellae>*12);

# PSI
# пси пыль
<psi:material>.setAspects(<aspect:praecantatio>*6,<aspect:perditio>*4,<aspect:auram>*6,<aspect:sensus>*12);
# пси металл
<psi:material:1>.setAspects(<aspect:praecantatio>*8,<aspect:metallum>*10,<aspect:auram>*6,<aspect:sensus>*12);
<contenttweaker:psi_iron_plate>.setAspects(<aspect:praecantatio>*8,<aspect:metallum>*10,<aspect:auram>*6,<aspect:sensus>*12);
# пси гем
<psi:material:2>.setAspects(<aspect:praecantatio>*10,<aspect:vitreus>*6,<aspect:auram>*6,<aspect:sensus>*12);
# темный пси металл
<psi:material:3>.setAspects(<aspect:praecantatio>*8,<aspect:metallum>*10,<aspect:auram>*6,<aspect:sensus>*12);
<contenttweaker:psi_ebony_plate>.setAspects(<aspect:praecantatio>*8,<aspect:metallum>*10,<aspect:auram>*6,<aspect:sensus>*12);
# светлый пси металл
<psi:material:4>.setAspects(<aspect:praecantatio>*8,<aspect:metallum>*10,<aspect:auram>*6,<aspect:sensus>*12);
<contenttweaker:psi_ivory_plate>.setAspects(<aspect:praecantatio>*8,<aspect:metallum>*10,<aspect:auram>*6,<aspect:sensus>*12);

######################################################

# Primal Charm

recipes.remove(<thaumicwands:item_primal_charm>);
recipes.addShaped(<thaumicwands:item_primal_charm>, [
    [<contenttweaker:psi_iron_plate>, <ore:gemPsi>, <contenttweaker:psi_iron_plate>],
    [<botania:bifrostpermpane>, <botania:manatablet>.withTag({}), <botania:bifrostpermpane>], 
    [<contenttweaker:psi_iron_plate>, <contenttweaker:luxumia_extract>, <contenttweaker:psi_iron_plate>]]);

# Волшебная схема

mods.thaumcraft.Infusion.registerRecipe("arcane_circuit", "INFUSION", <contenttweaker:arcane_circuit>, 20, [<aspect:cognitio>*64, <aspect:machina>*32], <thaumcraft:mirrored_glass>, 
[<contenttweaker:luxumia_extract>, <contenttweaker:luxumia_extract>, <thaumcraft:brain_box>, <thaumcraft:brain_box>, <thaumcraft:morphic_resonator>, <thaumcraft:mind>, <thaumcraft:mind:1>, <thaumcraft:mechanism_complex>]);

# Мистический Камень

recipes.remove(<thaumcraft:stone_arcane>);
recipes.addShaped(<thaumcraft:stone_arcane>, [
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
    [<botania:livingrock>, <thaumcraft:crystal_essence:*>, <botania:livingrock>], 
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]]);

# Инфузионная Матрица

mods.astralsorcery.Altar.addAttunementAltarRecipe("LampocraftIX:shaped/internal/altar/infusion_matrix", <thaumcraft:infusion_matrix>, 500, 350, [
        <ore:manaDiamond>, <thaumcraft:mechanism_simple>, <ore:manaDiamond>,
        <thaumcraft:mechanism_simple>, <thaumcraft:mind>, <thaumcraft:mechanism_simple>,
        <ore:manaDiamond>, <thaumcraft:mechanism_simple>, <ore:manaDiamond>,
        <thaumcraft:stone_arcane_brick>, <thaumcraft:stone_arcane_brick>,
        <thaumcraft:stone_arcane_brick>, <thaumcraft:stone_arcane_brick>
    ]);

recipes.addShaped(<thaumcraft:curio:6>, [
    [<bewitchment:sanguine_cloth>, <polymancy:item_bloodwell>, <bewitchment:sanguine_cloth>],
    [<bewitchment:sanguine_cloth>, <minecraft:book>, <bewitchment:sanguine_cloth>],
    [<bewitchment:sanguine_cloth>, <ore:gemGarnet>, <bewitchment:sanguine_cloth>]
]);

mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe( "crimson_robe_helm", "", 15, [<aspect:perditio>, <aspect:ignis>, <aspect:ordo>], 
        <thaumcraft:crimson_robe_helm>, [
        [<bewitchment:sanguine_cloth>, <bewitchment:sanguine_cloth>, <bewitchment:sanguine_cloth>],
        [<bewitchment:sanguine_cloth>, null, <bewitchment:sanguine_cloth>],
        [null, null, null]]);

mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe( "crimson_robe_chest", "", 15, [<aspect:perditio>, <aspect:ignis>, <aspect:ordo>], 
        <thaumcraft:crimson_robe_chest>, [
        [<bewitchment:sanguine_cloth>, null, <bewitchment:sanguine_cloth>],
        [<bewitchment:sanguine_cloth>, <bewitchment:sanguine_cloth>, <bewitchment:sanguine_cloth>],
        [<bewitchment:sanguine_cloth>, <bewitchment:sanguine_cloth>, <bewitchment:sanguine_cloth>]]);

mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe( "crimson_robe_legs", "", 15, [<aspect:perditio>, <aspect:ignis>, <aspect:ordo>], 
        <thaumcraft:crimson_robe_legs>, [
        [<bewitchment:sanguine_cloth>, <bewitchment:sanguine_cloth>, <bewitchment:sanguine_cloth>],
        [<bewitchment:sanguine_cloth>, null, <bewitchment:sanguine_cloth>],
        [<bewitchment:sanguine_cloth>, null, <bewitchment:sanguine_cloth>]]);

mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe( "crimson_boots", "", 15, [<aspect:perditio>, <aspect:ignis>, <aspect:ordo>], 
        <thaumcraft:crimson_boots>, [
        [null, null, null],
        [<bewitchment:sanguine_cloth>, null, <bewitchment:sanguine_cloth>],
        [<bewitchment:sanguine_cloth>, null, <bewitchment:sanguine_cloth>]]);


# Портал Культистов
mods.thaumcraft.Infusion.registerRecipe("spawn_lesser_crimson_portal", "INFUSION", 
<minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:cultistportallesser"}}), 15, 
[<aspect:vitium> * 90, <aspect:mortuus> * 45, <aspect:praecantatio> * 90, <aspect:auram> * 30], 
<thaumcraft:curio:6>, 
[<thaumcraft:metal_thaumium>, <thaumcraft:void_seed>, <thaumcraft:salis_mundus>, <thaumcraft:void_seed>, <minecraft:skull:1>, <thaumcraft:void_seed>, <astralsorcery:blockcelestialgateway>, <thaumcraft:void_seed>]);

# Руны

mods.thaumcraft.Infusion.registerRecipe("arc_rune", "INFUSION", <contenttweaker:arc_rune>, 20, 
        [<aspect:sol> * 40, <aspect:lux> * 25, <aspect:stellae> * 10, <aspect:caeles> * 12], 
        <thaumcraft:mirrored_glass>, 
        [<thaumcraft:scribing_tools>, <astralsorcery:itemcraftingcomponent:2>, 
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "stellae"}]}), <astralsorcery:itemcraftingcomponent:2>]);

mods.thaumcraft.Infusion.registerRecipe("warus_rune", "INFUSION", <contenttweaker:warus_rune>, 20, 
        [<aspect:sol> * 40, <aspect:lux> * 25, <aspect:stellae> * 10, <aspect:caeles> * 12], 
        <thaumcraft:mirrored_glass>, 
        [<thaumcraft:scribing_tools>, <astralsorcery:itemcraftingcomponent:2>, 
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aversio"}]}), <astralsorcery:itemcraftingcomponent:2>]);

mods.thaumcraft.Infusion.registerRecipe("cholus_rune", "INFUSION", <contenttweaker:cholus_rune>, 20, 
        [<aspect:sol> * 40, <aspect:lux> * 25, <aspect:stellae> * 10, <aspect:caeles> * 12], 
        <thaumcraft:mirrored_glass>, 
        [<thaumcraft:scribing_tools>, <astralsorcery:itemcraftingcomponent:2>, 
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitium"}]}), <astralsorcery:itemcraftingcomponent:2>]);

mods.thaumcraft.Infusion.registerRecipe("murtosis_rune", "INFUSION", <contenttweaker:murtosis_rune>, 20, 
        [<aspect:sol> * 40, <aspect:lux> * 25, <aspect:stellae> * 10, <aspect:caeles> * 12], 
        <thaumcraft:mirrored_glass>, 
        [<thaumcraft:scribing_tools>, <astralsorcery:itemcraftingcomponent:2>, 
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "mortuus"}]}), <astralsorcery:itemcraftingcomponent:2>]);

print("Выключение скрипта thaumcraft.zs");