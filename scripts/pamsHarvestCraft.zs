import crafttweaker.item.IItemStack;

print("Запуск скрипта pamsHarvestCraft.zs");

# Твердая кожа

recipes.remove(<harvestcraft:hardenedleatheritem>);
recipes.addShapeless(<harvestcraft:hardenedleatheritem>*2, [<minecraft:leather>, <minecraft:leather>,<minecraft:flint>,<minecraft:string>]);

print("Выключение скрипта pamsHarvestCraft.zs");

