# Haste Potion

Survival-friendly datapack for Minecraft that adds an craftable
**Potion of Caffeination** that you can drink to receive Haste VIII.
The potion allows you to instant-mine blocks you normally couldn't
(namely cobblestone and logs) with Diamond Efficiency V tools,
notably allowing instant-mining Deepslate with a Netherite Efficiency V pickaxe.

After the potion runs out, you will suffer from 8 minutes of Mining Fatigue II,
as you have overexerted yourself.

<!-- Like any addictive substance worth its salt, -->
Drinking another potion will return you to a state of Haste,
but you'll need to keep drinking them to stave off the eventual Mining Fatigue affliction.

## Download [here](https://github.com/budak7273/HastePotion/releases), put zip in your save's datapacks folder, then run `/reload` to install

![Haste Potion item tooltip](https://i.imgur.com/FKo5LXo.png)

Players will receive a message in the chat upon unlocking the recipe
(obtaining a bottle of honey) informing them of its existence.

Datapacks do not yet support custom brewing recipes, so the potions are made in a crafting table.

![Recipe Screenshot](https://i.imgur.com/vonzuOS.png)

You can craft a **Potion of Caffeination** with a
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
The glass bottle is included in the recipe to avoid duplicating glass bottles via the Honey Bottle's returned glass bottle.

## Features

* Survival friendly
  * Custom crafting recipe provides a method of obtaining potions in a survival playthrough
  * Crafter (block) compatible
* Works on Fabric/Paper/etc. servers
* Advancement/Recipe Book integration
  * Shows up in your crafting book once you have found a Honey Bottle.
* Addiction tracking
  * Optional scoreboard for how many potions each player has consumed

## Commands (operators only)

* `/function hastepotion:give_potion`
  * Gives yourself the potion's crafting ingredients for testing.
* `/function hastepotion:reinstall`
  * Convenience command. Reinstalls the pack from scratch and reloads all datapacks.
    Has the potential to fix bugs you encounter with the datapack.
* `/function hastepotion:uninstall`
  * Run this before uninstalling the pack - cleans up all scoreboard values and such.
    Does not delete, nor affect the functionality of, existing potions.
* `/function hastepotion:advancement_trigger`
  * Display the informational message players see when they unlock the recipe.
* `/scoreboard objectives setdisplay sidebar hp_potions_drank`
  * Display the potion drinking stats scoreboard in the sidebar
* `/scoreboard players set hp_player_interval hp_options <value>`
  * Set the update interval to a number of ticks. Default is 20. You shouldn't have to change this.

## Further Details

* The potion is not made in a Brewing Stand because datapacks can not currently add brewing stand recipes.
* I tried to document exactly how everything works via comments in the function files.
  Feel free to contact me with any questions. (Discord `robb4`)

## How it Works

* In order to achieve the '8 minutes of haste, then 8 minutes of mining fatigue' effect,
  the potion gives you all of its listed effects at once.
  * The Haste given for the initial 8 minutes counteracts the 16 minutes of Mining Fatigue
  * Mining Fatigue is actually markedly more potent than Haste,
    so the player actually needs to be given Haste 94 (amp 93) to reach Haste 4 levels of potency,
    or Haste 138 (amp 137) to reach Haste 8 levels of potency,
    while afflicted with Mining Fatigue 2.
  * Bad Luck amp 42 is also given to the player,
    which a background loop detects on 1 second intervals
    to trigger some fun sounds and particle effects.
    You can edit the scoreboard to slow this down or speed it up.
* Custom NBT data and NBT-hiding flags are used to hide the potion's true effects
  and replace them with the descriptive tooltip.

## Credit

* Before [Pack Format 34](https://minecraft.wiki/w/Pack_format#List_of_data_pack_formats) allowed for custom recipes with custom data on the output items,
  I based my custom crafting system off of the one that SethBling uses in his [Water Mill datapack](https://www.youtube.com/watch?v=hG-KOFf5GbM).
* I used an [online tellraw generator](https://minecraft.tools/en/tellraw.php) to produce tellraw commands - those are a pain.
* Multiple stackoverflow, reddit, and minecraft forums posts explaining command behavior and nitpicky syntax were read in the process of squashing bugs.

## Planned features

* Nothing for right now. Contact me on Discord (Robb#6731) if you have ideas!
* If they add brewing stand support to datapacks, I might rewrite this to use that instead.
