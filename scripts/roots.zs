import mods.roots.AnimalHarvest;
import mods.roots.Bark;
import mods.roots.Chrysopoeia;
import mods.roots.Fey;
import mods.roots.FlowerGrowth;
import mods.roots.Herbs;
import mods.roots.Modifiers;
import mods.roots.Mortar;
import mods.roots.Pacifist;
import mods.roots.Pyre;
import mods.roots.Ritual;

print("Запуск скрипта roots.zs");

# Посох

recipes.remove(<roots:staff>);
recipes.addShaped(<roots:staff>, [
    [null, <roots:bark_oak>, <roots:wildroot>],
    [null, <ore:stickWood>, <roots:bark_oak>], 
    [<ore:stickWood>, null, null]]);

# Сумочка трав

recipes.remove(<roots:herb_pouch>);
recipes.addShaped(<roots:herb_pouch>, [
    [<harvestcraft:hardenedleatheritem>, <minecraft:string>, <harvestcraft:hardenedleatheritem>],
    [<ore:wool>, <totemic:medicine_bag>, <ore:wool>], 
    [<totemic:buffalo_items>, <ore:wool>, <totemic:buffalo_items>]]);

# Пайра (костер)

recipes.remove(<roots:pyre>);
recipes.addShaped(<roots:pyre>, [
    [null, <ore:rootsBark>, null],
    [<ore:rootsBark>, <ore:logWood>, <ore:rootsBark>], 
    [<ore:cobblestone>, <roots:terra_moss>, <ore:cobblestone>]]);

print("Выключение скрипта roots.zs");