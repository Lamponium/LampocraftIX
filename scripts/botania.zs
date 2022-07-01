import mods.botania.Lexicon;
import mods.botania.ManaInfusion;
import mods.roots.Fey;

print("Запуск скрипта botania.zs");

# Лексика Ботания

recipes.remove(<botania:lexicon>.withTag({}));
recipes.addShapeless(<botania:lexicon>.withTag({}), [<thaumcraft:scribing_tools>, <minecraft:book>, <botania:petal:5>, <ore:gemEmerald>]);

# Мана железо

# Читая Дейзи

Fey.addRecipe("puredaisy", <botania:specialflower>.withTag({type: "puredaisy"}), 
    [<ore:mysticFlowerWhite>, 
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), 
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}), 
    <ore:petalWhite>, 
    <ore:gemAquamarine>]);

# Живой Камень

mods.botania.PureDaisy.removeRecipe(<botania:livingrock>);
mods.botania.PureDaisy.addRecipe(<naturesaura:infused_stone>, <botania:livingrock>, 100);

# Живое дерево

mods.botania.PureDaisy.removeRecipe(<botania:livingwood>);
mods.botania.PureDaisy.addRecipe(<naturesaura:ancient_bark>, <botania:livingwood>, 100);

# Маленький мана пул

recipes.remove(<botania:pool:2>);
recipes.addShaped(<botania:pool:2>, [[<ore:dyeCyan>, <ore:dyeCyan>, <ore:dyeCyan>],[<botania:livingrock0slab>, <thaumcraft:crystal_essence>, <botania:livingrock0slab>], [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]]);

# Обычный мана пул

recipes.remove(<botania:pool>);
recipes.addShaped(<botania:pool>, [[<botania:quartz:1>, <botania:quartz:1>, <botania:quartz:1>],[<botania:livingrock>, <botania:pool:2>, <botania:livingrock>], [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]]);

# Разноцветный мана пул

recipes.remove(<botania:pool:3>);
recipes.addShaped(<botania:pool:3>, [[<botania:quartz:5>, <botania:quartz:5>, <botania:quartz:5>],[<botania:shimmerrock>, <botania:pool:2>, <botania:shimmerrock>], [<botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>]]);

# Манасталь

mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <naturesaura:infused_iron>, 3000);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <ore:ingotSteel>, 3000);

# Дублирование вещей из PSI

mods.botania.ManaInfusion.addConjuration(<psi:material> * 2, <psi:material>, 2500);
mods.botania.ManaInfusion.addConjuration(<psi:material:1> * 2, <psi:material:1>, 5000);
mods.botania.ManaInfusion.addConjuration(<psi:material:2> * 2, <psi:material:2>, 10000);
mods.botania.ManaInfusion.addConjuration(<psi:material:5> * 2, <psi:material:5>, 2500);
mods.botania.ManaInfusion.addConjuration(<psi:material:6> * 2, <psi:material:6>, 2500);



print("Выключение скрипта botania.zs");