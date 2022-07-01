import mods.thaumcraft.SalisMundus;

print("Запуск скрипта bewitchment.zs");

# Witches' Oven

mods.thaumcraft.SalisMundus.addSingleConversion(<minecraft:furnace>, <bewitchment:witches_oven>);

recipes.remove(<bewitchment:witches_oven>);
recipes.remove(<bewitchment:witches_cauldron>);
recipes.addShapeless(<bewitchment:witches_cauldron>, [<thaumcraft:crucible>, <bewitchment:pentacle>]);


print("Выключение скрипта bewitchment.zs");