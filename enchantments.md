# Catalog of Enchantments / Curses

The following table describes each enchantment and curse introduced in Enchantology. If `Treasure?` == `TRUE`, these enchantments can only be acquired by fishing, looting certain structures, or from certain mobs (see `Found In` column). If `Treasure?` == `FALSE`, these can be also be acquired through fishing, on random loot, or in the Enchanting Table.

In general, enchantments of a certain "school" are compatible with each other and incompatible with others. For example, `Curse of Combustion` is a fire-based enchantment which cannot be combined with `Frost Walker`, an ice-based enchantment. Similarly, `Gravity` (reality magic) is incompatible with `Discordant` (void magic). Other incompatibilties exist, such as the damage (e.g., `Sharpness`, `Smite`, `Certainty`, and `Vigilance`) or education (e.g., `Audibility` and `Alchemic`). 

Due to these schools, **certain vanilla enchantments have been made incompatible with other vanilla enchantments**. This is done absolutely minimally to keep the game vanilla-friendly whilst consistent with these rules. The only instance of this is `Fire Protection` and `Frost Walker`, which are now incompatible.  

**Users are encouraged to read the documentation below as well as the enchantment JSON files to familiarize themselves with the various compatibilites.**

| Name | Summary | Primary Item(s) | Max Level | Incompatible With | Treasure? | Found In |
|:-----|:-------:|:---------------:|:---------:|:-----------------:|:---------:|:--------:|
| Alchemic | Potions have a 30% chance to not be consumed when drank. | Helmet | I | Audibility | TRUE | Trial Chamber, Witch |
| Audibility | You've honed your hearing. Hold sneak to reveal nearby mobs. | Helmet | I | Alchemic | TRUE | Ancient City |
| Brutality | Apply bleed damage to victim. | Axes, Shears | I | | FALSE | |
| Butchery | You carve items from injured mobs. You tear mutton from sheep, raw pork from pigs, and raw beef from cows. You rip flesh from zombies and bone meal from skeletons. You carve iron from iron golems and ender pearls from enderman. | Shears | I | | FALSE | |
| Certainty | Increased damage to ender mobs. | Sharp Weapons | V | Bane of Arthropods, Breach, Density, Divinity, Sharpness, Smite, Subjugation, Vigilance, Vitality | FALSE | |
| Curse of Agony | You are in agonizing pain. Total health is reduced by 1 heart per armor piece with this curse equipped. | Armor | I | Salubrity | FALSE | |
| Curse of Combustion | You are hot to the touch. Ignites any mob within 1 block of your position. | Armor | I | Frost Walker | FALSE | |
| Curse of Contraction | You have been shrunk. Your size, speed, attack damage, jump height, and entity/block interaction range are reduced by 12.5% per armor piece with this curse equipped. | Armor | I | Curse of Uncertainty | FALSE | |
| Curse of Fatigue | You are fatigued. Your mining speed is greatly reduced. | Armor | I | | FALSE | | 
| Curse of the Godfather | You have made enemies. Every time you enter a vehicle (minecart, horse, etc.), there is a small chance it is rigged to explode. | Armor | I | | FALSE | |
| Curse of Impending Doom | You are fated to die. Reduces maximum health by half a heart every three seconds. You will die in 60 seconds, unless the curse is removed. | Armor | I | Salubrity | FALSE | |
| Curse of Masochism | Quit hitting yourself. | Armor | I | | FALSE | |
| Curse of Paranoia | You hear auditory hallucinations periodically. | Armor | I | | FALSE | |
| Curse of Repulsion | Dropped items are repulsed by you. | Armor | I | | FALSE | |
| Curse of Revile | Neutral mobs have made up their minds and attack you immediately. | Armor | I | | FALSE | |
| Curse of Uncertainty | You are not confidently tethered to the earth. Periocally teleport nearby. | Armor | I | | FALSE | |
Cushioning | Arrows struck onto blocks creating a magical cushion, negating fall damage for those who land within it. | Bow, Crossbow | I | Discordant, Shrieking, Transposition | TRUE | End City
| Dexterity | Increased swing speed for enchanted tools. | Tools | III | | TRUE | |
| Discordant | Victims struck by arrows from this enchanted bow teleport randomly nearby. | Bow, Crossbow | I | Cushioning, Gravity, Shrieking | TRUE | End City |
| Divinity | Increase damage to nether mobs. | Sharp Weapons | V | Bane of Arthropods, Breach, Certainty, Density, Sharpness, Smite, Subjugation, Vigilance, Vitality | FALSE | |
| Escalation | Increased number of vertical blocks that can be stepped over without jumping 0.5 blocks per level. | Leggings | II | | TRUE | Jungle Temple |
| Explosive | Crossbow arrows explode on contact. | Crossbow | I | Thunderbolting | TRUE | Pillager Outpost |
| Extension | Increased block interaction range. | Breeze Rod | III | | TRUE | Trial Chamber |
| Frost Trotter | Creates frosted ice blocks when walking over water, and grants damage immunity from certain blocks such as campfires and magma blocks when stepped on. | Horse Armor | I | | TRUE | Snowy Village House |
| Galloping | Increased base movement speed. | Horse Armor | II | | FALSE | Savanna Village House | 
| Gnashing | Wolf attacks do increased damage. | Wolf Armor | V |  | TRUE | Trail Ruins |
| Gravity | Arrows are weighted and send your airborne victim plummeting. | Bow, Crossbow | I | Discordant, Punch, Shrieking, Transposition | FALSE | |
| Harvesting | Increased number of adjacent crops are broken around the origin. | Hoe | III |  | FALSE | |
| Immolation | Can directly ignite players/entities. | Flint & Steel | I | | TRUE | Ruined Portal |
| Intuition | Drawing your bow blinds you, but your arrows do 1.5x damage when outside your vision (5 blocks). | Bow | I | Shrieking | TRUE | Strong Library, Trial Chamber |
| Ironclad | You are made of sterner stuff. Take reduced knockback. | Chestplate | III |  | FALSE | |
| Lacerating | Increased damage for shears. | Shears | V | | FALSE | |
| Leeching | Siphons the life from your victim. | Sharp Tools | II |  Withering | TRUE | Woodland Mansion |
| Magnetic | Attract dropped items from a greater distance. | Lightning Rod, Copper Armor | I | | TRUE | Trial Chamber |
| Oppression | Inflict slowness on your victim. | Mace | III |  | FALSE | |
| Precision | Decrease projectile spread if paired with Multishot. | Crossbow | III | | FALSE | Pillager Outpost |
| Quarrying | Insta-mine deepslate if paired with Efficiency V and Haste II. | Netherite Pickaxe | I |  | TRUE | Abandoned Mineshaft |
| Reaching | Increased entity interaction range. | Sharp Tools, Trident, Shears | III | Sweeping Edge | FALSE | |
| Salubrity | Increased maximum health (maximum 4 hearts). | Armor | II | Curse of Agony, Curse of Impending Doom, Protection | TRUE | Sniffer Digging |
| Sand Strider | Increased movement on sand, red sand, and suspicious sand, but slowly drains durability in the process. | Boots | III | Depth Strider | TRUE | Desert Pyramid
| Shattering | Reduce armor effectiveness of your victim. | Axes | III |  | TRUE | |
| Shrieking | Your arrows become pure energy, releasing a instant and powerful sonic charge. | Bow | I | Cushioning, Discordant, Flame, Gravity, Intuition, Power, Punch | TRUE | Ancient City |
| Steadfast | Protection for horse and wolf armor. | Horse Armor, Wolf Armor | IV | | FALSE | |
| Subjugation | You are cruel. Increased damage to villagers, golems, and sniffers. | Sharp Weapons | V | Bane of Arthropods, Breach, Certainty, Density, Divinity, Sharpness, Smite, Vigilance, Vitality | TRUE | Pillager Outpost, Woodland Mansion |
| Thunderbolting | Lightning strikes upon hitting your opponent or a lightning rod during a thunderstorm. | Crossbow | I | Explosive | False | Underwater Ruins |
| Transposition | You and your victim swap places. | Bow, Crossbow | I | Cushioning, Gravity, Shrieking | TRUE | End City |
| Vigilance | You are just. Increased damage to illagers, evokers, illusioners, evokers, etc. | Sharp Tools | V | Bane of Arthropods, Breach, Certainty, Density, Divinity, Sharpness, Smite, Subjugation, Vitality | FALSE | | 
| Vitality | Your strike replenishes life to your victim's bones. Substantial increase (greater than Smite) to damage dealt exclusively to Wither and Wither Skeletons. | Sharp Tools | V | Bane of Arthropods, Breach, Certainty, Density, Divinity, Sharpness, Smite, Subjugation, Vigilance, Withering | TRUE | Bastion Treasure Chest |
| Will of Animus | Overwhelm your victim with deafening power. Striking entites with this enchantment disables their AI! | Arms Up Pottery Shard | I | | N/A | Commands Only. |
| Windshear | Your wings slice into your opponents, dealing damage when gliding at high speeds. | Elytra | V | Windshield | TRUE | End City |
| Windshield | Additional damage reduction (half that of Protection) for Elytras. | Elytra | IV | Windshear | TRUE | End City |
| Withering | Inflict the wither debuff on your victims. | Sharp Tools | II | Leeching, Vitality | TRUE | Nether Fortress |