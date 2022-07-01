import mods.naturesaura.Altar;
import mods.naturesaura.TreeRitual;

#######[1]#######
####[5]###[7]####
#[3]###[I]###[4]#
####[8]###[6]####
#######[2]#######

print("Запуск скрипта NaturesAura.zs");

# Волшебный Камень

mods.naturesaura.Altar.removeRecipe(<naturesaura:infused_stone>);
mods.naturesaura.Altar.addRecipe("naturesaura:infused_stone", <roots:runestone>, <naturesaura:infused_stone>, null, 2000, 100);

# Древняя Кора

recipes.addShaped(<naturesaura:ancient_bark> * 4, [
    [null, <naturesaura:ancient_log>, null],
    [<naturesaura:ancient_log>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), <naturesaura:ancient_log>],
    [null, <naturesaura:ancient_log>, null]
]);

# Древний саженец

mods.naturesaura.TreeRitual.removeRecipe(<naturesaura:ancient_sapling>);
mods.naturesaura.TreeRitual.addRecipe("naturesaura:ancient_sapling",<totemic:cedar_sapling>, <naturesaura:ancient_sapling>, 500, 
[
<roots:wildroot>, 
<roots:wildroot>, 
<thaumcraft:salis_mundus>,
<thaumcraft:salis_mundus>, 
<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), 
<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), 
<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}), 
<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]})
]);

print("Выключение скрипта NaturesAura.zs");