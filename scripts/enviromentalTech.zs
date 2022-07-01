print("Запуск скрипта enviromentalTech.zs");

recipes.remove(<environmentaltech:diode>);
recipes.remove(<environmentaltech:litherite_crystal>);
recipes.remove(<environmentaltech:connector>);
recipes.remove(<environmentaltech:modifier_null>);
recipes.remove(<environmentaltech:lightning_rod_insulated>);
recipes.remove(<environmentaltech:laser_core>);
recipes.remove(<environmentaltech:laser_lens>);

recipes.addShaped(<environmentaltech:modifier_null>, [
    [<ore:plateIron>, <nuclearcraft:salt_fission_glass>, <ore:plateIron>],
    [<nuclearcraft:salt_fission_glass>, <environmentaltech:interconnect>, <nuclearcraft:salt_fission_glass>], 
    [<ore:plateIron>, <nuclearcraft:salt_fission_glass>, <ore:plateIron>]]);

recipes.addShaped(<environmentaltech:diode>, [
    [<nuclearcraft:salt_fission_glass>, <nuclearcraft:salt_fission_glass>, <nuclearcraft:salt_fission_glass>],
    [<nuclearcraft:salt_fission_glass>, <immersiveengineering:wirecoil:5>, <nuclearcraft:salt_fission_glass>], 
    [<thermalfoundation:material:134>, <immersiveintelligence:material:7>, <thermalfoundation:material:134>]]);

recipes.addShaped(<environmentaltech:litherite_crystal>, [
    [<thermalfoundation:material:16>, <thermalfoundation:material:17>, <thermalfoundation:material:16>],
    [<thermalfoundation:material:17>, <thermalfoundation:material:134>, <thermalfoundation:material:17>], 
    [<thermalfoundation:material:16>, <thermalfoundation:material:17>, <thermalfoundation:material:16>]]);

recipes.addShaped(<environmentaltech:connector>, [
    [<immersiveengineering:wirecoil:5>, <minecraft:iron_ingot>, <immersiveengineering:wirecoil:5>],
    [<minecraft:iron_ingot>, <minecraft:redstone_block>, <minecraft:iron_ingot>], 
    [<immersiveengineering:wirecoil:5>, <minecraft:iron_ingot>, <immersiveengineering:wirecoil:5>]]);

recipes.addShaped(<environmentaltech:lightning_rod_insulated>, [
    [null, <nuclearcraft:salt_fission_glass>, null],
    [<nuclearcraft:salt_fission_glass>, <environmentaltech:lightning_rod>, <nuclearcraft:salt_fission_glass>], 
    [null, <nuclearcraft:salt_fission_glass>, null]]);

recipes.addShaped(<environmentaltech:laser_core>, [
    [<minecraft:iron_bars>, <nuclearcraft:salt_fission_glass>, <minecraft:iron_bars>],
    [<environmentaltech:connector>, <nuclearcraft:salt_fission_glass>, <environmentaltech:connector>], 
    [<minecraft:iron_bars>, <nuclearcraft:salt_fission_glass>, <minecraft:iron_bars>]]);
    
recipes.addShaped(<environmentaltech:laser_lens>, [
    [<nuclearcraft:salt_fission_glass>, null, <nuclearcraft:salt_fission_glass>],
    [<nuclearcraft:salt_fission_glass>, <nuclearcraft:salt_fission_glass>, <nuclearcraft:salt_fission_glass>], 
    [<nuclearcraft:salt_fission_glass>, null, <nuclearcraft:salt_fission_glass>]]);

print("Выключение скрипта enviromentalTech.zs");