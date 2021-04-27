# Haste Potion

Survival-friendly datapack for Minecraft that adds an craftable
**Potion of Caffeination** that you can drink to receive Haste IV (4).
The potion allows you to instant-mine blocks you normally couldn't
(namely cobblestone and logs) with Efficiency V (5) tools.

After the potion runs out, you will suffer from 8 minutes of Mining Fatigue II (2),
as you have overexerted yourself.

<!-- Like any addictive substance worth its salt, -->
Drinking another potion will return you to a state of Haste,
but you'll need to keep drinking them to avoid the eventual Mining Fatigue affliction.

## Download [here](https://github.com/budak7273/HastePotion/releases), put zip in your save's datapacks folder, then run `/reload` to install

![Haste Potion item tooltip](https://i.imgur.com/YmhsgS5.png)

Datapacks do not yet support custom brewing recipes, so the potions are made in a crafting table.
The crafting recipe will display as Dragon's Breath in the crafting table,
but as soon as you craft it, the items will be converted to Potions of Caffeination.

<!-- TODO add crafting recipe screenshot -->

You can craft a Potion of Caffeination with a
<img src="https://static.wikia.nocookie.net/minecraft_gamepedia/images/9/9b/Redstone_Torch_BE3.png/revision/latest/scale-to-width-down/150?cb=20200320184251" alt="Icon" width="20"/>
Redstone Torch,
<img src="https://static.wikia.nocookie.net/minecraft_gamepedia/images/2/25/Glowstone_Dust_JE2_BE2.png/revision/latest/scale-to-width-down/160?cb=20190430044519" alt="Icon" width="20"/>
Glowstone Dust,
<img src="https://static.wikia.nocookie.net/minecraft_gamepedia/images/7/7c/Blaze_Powder_JE2_BE1.png/revision/latest/scale-to-width-down/160?cb=20190403182032" alt="Icon" width="20"/>
Blaze Powder,
<img src="https://static.wikia.nocookie.net/minecraft_gamepedia/images/c/c2/Honey_Bottle_JE1_BE2.png/revision/latest/scale-to-width-down/160?cb=20190822170711" alt="Icon" width="20"/>
Honey Bottle,
<img src="https://static.wikia.nocookie.net/minecraft_gamepedia/images/f/fb/Glass_Bottle_JE2_BE2.png/revision/latest/scale-to-width-down/160?cb=20200523234146" alt="Icon" width="20"/>
Glass Bottle,
<img src="https://static.wikia.nocookie.net/minecraft_gamepedia/images/8/85/Cocoa_Beans_JE4_BE3.png/revision/latest?cb=20200127083719" alt="Icon" width="20"/>
Cocoa Beans, and an 
<img src="https://static.wikia.nocookie.net/minecraft_gamepedia/images/2/26/Emerald_JE3_BE3.png/revision/latest/scale-to-width-down/160?cb=20191229174220" alt="Icon" width="20"/>
Emerald in a shapeless recipe.
One glass bottle will be returned to you via the Honey Bottle in the crafting table.

<!-- ![Haste Potion crafting recipe](https://i.imgur.com/Rf1a2TE.png) -->

Players will receive a message in the chat upon unlocking the recipe
(obtaining a bottle of honey) informing them of its existence.

<!-- TODO advancement unlock message in chat screenshot -->

## Features

* Survival friendly
  * Custom crafting recipe provides a method of obtaining potions in a survival playthrough
* Works for multiple players at once
* Advancement/Recipe Book integration
  * The recipe will show up in your book once you have held a Honey Bottle.
  * It appears as Dragon's Breath for reasons explained in the [Further Details](#further-details) section.
* Works on Spigot/Paper/Etc.

## Commands (operators only)

* `/function hastepotion:give_potion`
  * Gives yourself a potion for testing if you don't want to craft one.
* `/function hastepotion:reinstall`
  * Convenience command. Reinstalls the pack from scratch and reloads all datapacks.
    Has the potential to fix bugs you encounter with the datapack.
* `/function hastepotion:uninstall`
  * Run before uninstalling the pack - cleans up all scoreboard values and such.
    Does not delete, nor affect the functionality of, existing potions.
* `/function hastepotion:advancement_trigger`
  * Display the informational message players see when they unlock the recipe.

## Further Details

* I tried to document exactly how everything works via comments in the function files.
  Feel free to contact me with any questions. (Discord Robb#6731)
* The potion is not made in a Brewing Stand because datapacks can not currently add brewing stand recipes.
* The crafting recipe returns Dragon's Breath instead of a potion because existing potions in the inventory can not easily be restored when the crafting triggers.
* Regular Dragon's Breath can still be used normally.
  * If you have some in your inventory when you craft Potions of Caffeination,
    they will be preserved.

## How it Works

* In order to achieve the '8 minutes of haste, then 8 minutes of mining fatigue' effect,
  the potion gives you all of its listed effects at once.
  * The Haste given for the initial 8 minutes counteracts the 16 minutes of Mining Fatigue
  * Mining Fatigue is actually markedly more potent than Haste,
    so the player actually needs to be given Haste 94 to reach Haste 4 levels of potency
    while afflicted with Mining Fatigue 2.
* Custom NBT data and NBT-hiding flags are used to hide the potion's true effects
  and replace them with the descriptive tooltip.

## Credit

* I based my crafting system off of the one that SethBling uses in his [Water Mill datapack](https://www.youtube.com/watch?v=hG-KOFf5GbM).
  * If you are looking to create a custom crafting recipe that produces an item with NBT data, I strongly suggest that you look at the comments I wrote in my functions. SethBling didn't leave any explanatory comments in his function files, and his process was difficult to follow at first.
  * I also use this in my [Magnet datapack](http://bit.ly/MagnetDatapack).
* I used an [online generator](https://advancements.thedestruc7i0n.ca/) to produce the advancement used to grant the recipes.
* I used an [online tellraw generator](https://minecraft.tools/en/tellraw.php) to produce tellraw commands - those are a pain.
* Multiple stackoverflow, reddit, and minecraft forums posts explaining command behavior and nitpicky syntax were read in the process of squashing bugs.

## Planned features

* Nothing for right now. Contact me on Discord (Robb#6731) if you have ideas!
* If they add brewing stand support to datapacks, I might rewrite this to use that instead.
