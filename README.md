# Pokémon Crystal [![Build Status][ci-badge]][ci]

This is a disassembly of Pokémon Crystal.

It builds the following ROMs:

- Pokemon - Crystal Version (UE) (V1.0) [C][!].gbc `sha1: f4cd194bdee0d04ca4eac29e09b8e4e9d818c133`
- Pokemon - Crystal Version (UE) (V1.1) [C][!].gbc `sha1: f2f52230b536214ef7c9924f483392993e226cfb`
- Pokemon - Crystal Version (A) [C][!].gbc `sha1: a0fc810f1d4e124434f7be2c989ab5b5892ddf36`
- CRYSTAL_ps3_010328d.bin `sha1: c60d57a24bbe8ecf7cba54ab3f90669f97bd330d`
- CRYSTAL_ps3_us_revise_010710d.bin `sha1: 391ae86b1d5a26db712ffe6c28bbf2a1f804c3c4`
- CGBBYTE1.784.patch `sha1: a25517f60ca0e887d39ec698aa56a0040532a4b3`

To set up the repository, see [INSTALL.md](INSTALL.md).

## See also

- [**FAQ**](FAQ.md)
- [**Documentation**][docs]
- [**Wiki**][wiki] (includes [tutorials][tutorials])
- [**Symbols**][symbols]

You can find us on [Discord (pret, #pokecrystal)](https://discord.gg/d5dubZ3).

For other pret projects, see [pret.github.io](https://pret.github.io/).

[docs]: https://pret.github.io/pokecrystal/
[wiki]: https://github.com/pret/pokecrystal/wiki
[tutorials]: https://github.com/pret/pokecrystal/wiki/Tutorials
[symbols]: https://github.com/pret/pokecrystal/tree/symbols
[ci]: https://github.com/pret/pokecrystal/actions
[ci-badge]: https://github.com/pret/pokecrystal/actions/workflows/main.yml/badge.svg

## Credits Features added :

- Graphical improvements
- Running shoes
- XP when catching
- Move relearner + Egg move relearner (replace move deleter)
- HM forgettable
- HM usable outside of battle if can learn + in inventory
- TM usable outside of battle if can learn
  - dig and sweet scent after whitney if not learned
  - headbutt after bugsy if not learned
- Restored GSBALL event
- New selection oddegg + force shiny (can be improved by moving it to a new map / enlarging daycare inside)
- Types update
  - Dark : special => physical
  - Ghost : physical => special
- Removed roadblock Mahogany -> Ice path (Clair still blocked until radio tower is done) + updated blackthorn gym block (youtube Zen Mode idea)
- TYROGUE evo :
  - lvl 20 -> HITMONTOP
  - lvl 20 holding PUNCHING BAG-> HITMONCHAN
  - lvl 20 holding KICKING BAG-> HITMONLEE
- New trainer parties strongly inspired by Smith Crystal Legacy https://github.com/cRz-Shadows/Pokemon_Crystal_Legacy

## Credits

https://github.com/pret/pokecrystal/wiki/Removing-the-intro
https://github.com/pret/pokecrystal/wiki/Remove-the-artificial-save-delay

https://github.com/pret/pokecrystal/wiki/Running-Shoes
https://github.com/pret/pokecrystal/wiki/Gain-experience-from-catching-Pok%C3%A9mon
https://github.com/pret/pokecrystal/wiki/Allow-Using-a-Field-Move-if-the-Pokemon-Can-Learn-It
https://github.com/pret/pokecrystal/wiki/Kurt-Makes-Pokeballs-Instantly
https://github.com/pret/pokecrystal/wiki/Restore-the-GS-Ball-Celebi-Event

https://github.com/pret/pokecrystal/wiki/Allow-more-trainer-parties,-with-individual-DVs,-stat-experience,-nicknames,-variable-teams,-etc

https://github.com/pret/pokecrystal/wiki/Improve-the-outdoor-sprite-system
https://github.com/pret/pokecrystal/wiki/Color-Pok%C3%A9mon-pictures-shown-in-overworld
https://github.com/pret/pokecrystal/wiki/Colored-trainer-card-badges
https://github.com/pret/pokecrystal/wiki/Show-the-tops-of-leaders-heads-on-the-trainer-card
https://github.com/pret/pokecrystal/wiki/Add-a-third-trainer-card-page-for-Kanto-badges
https://github.com/pret/pokecrystal/wiki/Show-move-names-when-you-receive-a-TM-or-HM
https://github.com/pret/pokecrystal/wiki/Add-a-fourth-stats-page
https://github.com/pret/pokecrystal/wiki/Replace-Menu-Account-with-a-small-clock-in-the-corner-of-the-screen
https://github.com/pret/pokecrystal/wiki/Show-an-icon-for-the-current-weather
https://github.com/pret/pokecrystal/wiki/Add-a-new-item
https://github.com/pret/pokecrystal/wiki/Evolve-while-holding-an-item
https://github.com/pret/pokecrystal/wiki/Add-a-new-Pack-pocket#5-add-space-in-wram-for-the-new-pocket -> bag size

https://github.com/pret/pokecrystal/wiki/Add-a-new-overworld-sprite
https://github.com/pret/pokecrystal/wiki/Improve-the-outdoor-sprite-system
https://github.com/pret/pokecrystal/wiki/Allow-more-trainer-parties,-with-individual-DVs,-stat-experience,-nicknames,-variable-teams,-etc
https://github.com/pret/pokecrystal/wiki/Add-a-new-trainer-class

// move relearners :
https://github.com/pret/pokecrystal/wiki/Add-a-Move-Relearner
https://github.com/pret/pokecrystal/compare/master...Nayru62:pokecrystal:PC_Move_and_EggMove_Relearner

Repo Crystal legacy : https://github.com/cRz-Shadows/Pokemon_Crystal_Legacy
