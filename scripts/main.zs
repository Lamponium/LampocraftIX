#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

#priority 1

print("Запуск скрипта main.zs");

recipes.removeByMod("hooked");
recipes.removeByMod("danknull");

############################################### STARLIGHT ADDITIONS ##################################################

############################################ Вкладки твореческого режима: ############################################

val starlightAlchemyTab = VanillaFactory.createCreativeTab("starlightAlchemyTab", <item:contenttweaker:luxumia_extract>);
starlightAlchemyTab.register();

val starlightRunicTab = VanillaFactory.createCreativeTab("starlightRunicTab", <item:contenttweaker:arc_rune>);
starlightRunicTab.register();

val starlightItemsTab = VanillaFactory.createCreativeTab("starlightItemsTab", <item:contenttweaker:solar_diamond>);
starlightItemsTab.register();

############################################ Звездная Алхимия: #######################################################

# Экстракт Люксомии:

var starlightLuxumiaExtract = VanillaFactory.createItem("luxumia_extract");
starlightLuxumiaExtract.maxStackSize = 64;
starlightLuxumiaExtract.creativeTab = <creativetab:starlightAlchemyTab>;
starlightLuxumiaExtract.register();

# Экстракт Козумиса

var starlightCozumisExtract = VanillaFactory.createItem("cozumis_extract");
starlightCozumisExtract.maxStackSize = 64;
starlightCozumisExtract.creativeTab = <creativetab:starlightAlchemyTab>;
starlightCozumisExtract.register();

# Экстракт Зуробиса

var starlightZurobisExtract = VanillaFactory.createItem("zurobis_extract");
starlightZurobisExtract.maxStackSize = 64;
starlightZurobisExtract.creativeTab = <creativetab:starlightAlchemyTab>;
starlightZurobisExtract.register();

########################################### Звездное Вырезание Рун: #######################################################

# Руна Варуса / Warus Rune

var starlightWarusRune = VanillaFactory.createItem("warus_rune");
starlightWarusRune.maxStackSize = 16;
starlightWarusRune.creativeTab = <creativetab:starlightRunicTab>;
starlightWarusRune.register();

# Руна Холуса / Cholus Rune

var starlightCholusRune = VanillaFactory.createItem("cholus_rune");
starlightCholusRune.maxStackSize = 16;
starlightCholusRune.creativeTab = <creativetab:starlightRunicTab>;
starlightCholusRune.register();

# Руна Муртосиса / Murtosis Rune

var starlightMurtosisRune = VanillaFactory.createItem("murtosis_rune");
starlightMurtosisRune.maxStackSize = 16;
starlightMurtosisRune.creativeTab = <creativetab:starlightRunicTab>;
starlightMurtosisRune.register();

# Арковая Руна / Arc Rune

var starlightArcRune = VanillaFactory.createItem("arc_rune");
starlightArcRune.maxStackSize = 16;
starlightArcRune.creativeTab = <creativetab:starlightRunicTab>;
starlightArcRune.register();

########################################### Звездные предметы: #######################################################

# Солнечный бриллиант

var starlightSolarDiamond = VanillaFactory.createItem("solar_diamond");
starlightSolarDiamond.maxStackSize = 64;
starlightSolarDiamond.creativeTab = <creativetab:starlightItemsTab>;
starlightSolarDiamond.register();

# Кровавый бриллиант

var starlightBloodDiamond = VanillaFactory.createItem("blood_diamond");
starlightBloodDiamond.maxStackSize = 64;
starlightBloodDiamond.creativeTab = <creativetab:starlightItemsTab>;
starlightBloodDiamond.register();

# Волшебная схема / Arcane Circuit

var starlightArcaneCircuit = VanillaFactory.createItem("arcane_circuit");
starlightArcaneCircuit.maxStackSize = 64;
starlightArcaneCircuit.creativeTab = <creativetab:starlightItemsTab>;
starlightArcaneCircuit.register();

####################################### PSI ##########################################################

# Пластина из Пси металла / Psi Iron Plate

var starlightPsiIronPlate = VanillaFactory.createItem("psi_iron_plate");
starlightPsiIronPlate.maxStackSize = 64;
starlightPsiIronPlate.creativeTab = <creativetab:starlightItemsTab>;
starlightPsiIronPlate.register();

# Пластина из металла слоновой кости / Psi Iron Plate

var starlightPsiIvoryPlate = VanillaFactory.createItem("psi_ivory_plate"); 
starlightPsiIvoryPlate.maxStackSize = 64;
starlightPsiIvoryPlate.creativeTab = <creativetab:starlightItemsTab>;
starlightPsiIvoryPlate.register();

# Пластина из металла слоновой кости / Psi Iron Plate

var starlightPsiEbonyPlate = VanillaFactory.createItem("psi_ebony_plate"); 
starlightPsiEbonyPlate.maxStackSize = 64;
starlightPsiEbonyPlate.creativeTab = <creativetab:starlightItemsTab>;
starlightPsiEbonyPlate.register();

#####################################################




print("Выключение скрипта main.zs");