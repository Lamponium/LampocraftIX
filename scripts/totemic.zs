import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

print("Запуск скрипта totemic.zs");

# Ножичек

recipes.remove(<totemic:totem_whittling_knife>);
recipes.addShaped(<totemic:totem_whittling_knife>, 
    [[null, <minecraft:flint>, <minecraft:iron_ingot>],
    [<harvestcraft:hardenedleatheritem>, <roots:iron_knife>, null], 
    [<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, null]]);

# Барабан

recipes.remove(<totemic:drum>);
recipes.addShaped(<totemic:drum>, [
    [<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>],
    [<ore:logWood>, null, <ore:logWood>], 
    [<ore:logWood>, <minecraft:noteblock>, <ore:logWood>]]);

# Тотемный жезл

recipes.remove(<totemic:totemic_staff>);
recipes.addShaped(<totemic:totemic_staff>,[
    [<ore:treeLeaves>, null, null],
    [<ore:treeLeaves>, <roots:staff>, <astralsorcery:itemcraftingcomponent>], 
    [<ore:stickWood>, <ore:gemAmethyst>, null]]);

# Тотемпедия

recipes.remove(<totemic:totempedia>);
recipes.addShaped(<totemic:totempedia>,[
    [<ore:rootsBark>, <thaumcraft:scribing_tools>, <ore:rootsBark>],
    [<ore:rootsBark>, <minecraft:book>, <ore:rootsBark>], 
    [<ore:rootsBark>, <minecraft:string>, <ore:rootsBark>]]);

# Шумелка ветра

recipes.remove(<totemic:wind_chime>);
recipes.addShaped(<totemic:wind_chime>, [
    [<minecraft:string>, <ore:plateIron>, <minecraft:string>],
    [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], 
    [<minecraft:iron_ingot>, null, null]]);

# Типи (палатка)

recipes.remove(<totemic:tipi>);
recipes.addShaped(<totemic:tipi>, [
    [<ore:stickWood>,<ore:blockWool>,<ore:stickWood>],
    [<ore:blockWool>,<totemic:buffalo_items>,<ore:blockWool>],
    [<totemic:buffalo_items>,null,<totemic:buffalo_items>]]);

# Мешочек лекарств

recipes.remove(<totemic:medicine_bag>);
recipes.addShaped(<totemic:medicine_bag>, [
    [<harvestcraft:hardenedleatheritem>, <minecraft:string>, <harvestcraft:hardenedleatheritem>],
    [<totemic:buffalo_items>, <roots:wildroot>, <totemic:buffalo_items>], 
    [null, <totemic:buffalo_items>, null]]);

# Шумелка (детская погремушка)

recipes.remove(<totemic:rattle>);
recipes.addShaped(<totemic:rattle>, [
    [null, <minecraft:redstone_block>, <minecraft:lapis_block>],
    [<minecraft:clay_ball>, <totemic:buffalo_items:1>, <minecraft:redstone_block>], 
    [<minecraft:stick>, <minecraft:clay_ball>, null]]);

print("Выключение скрипта totemic.zs");