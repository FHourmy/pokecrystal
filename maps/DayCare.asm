	object_const_def
	const DAYCARE_GRAMPS
	const DAYCARE_GRANNY
  const DAYCARE_EGG_PICHU
  const DAYCARE_EGG_CLEFFA
  const DAYCARE_EGG_IGGLYBUFF
  const DAYCARE_EGG_SMOOCHUM
  const DAYCARE_EGG_MAGBY
  const DAYCARE_EGG_ELEKID
  const DAYCARE_EGG_TYROGUE

DayCare_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, DayCareEggCheckCallback

DayCareEggCheckCallback:
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .PutDayCareManOutside
	clearevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	setevent EVENT_DAY_CARE_MAN_ON_ROUTE_34
	endcallback

.PutDayCareManOutside:
	setevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	clearevent EVENT_DAY_CARE_MAN_ON_ROUTE_34
	endcallback

DayCareManScript_Inside:
	faceplayer
	opentext
	checkevent EVENT_GOT_ODD_EGG
	iftrue .AlreadyHaveOddEgg
	writetext DayCareManText_GiveOddEgg
  waitbutton
	closetext
	end

.AlreadyHaveOddEgg:
	special DayCareMan
	waitbutton
	closetext
	end

PickEggPichu:
  opentext
	writetext PickEggPichuText
  yesorno
	closetext
	iftrue .GiveEggPichu
	end

.GiveEggPichu:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, PartyFull
	special GivePichuEgg
	opentext
	writetext DayCareText_GotOddEgg
  disappear DAYCARE_EGG_PICHU
	playsound SFX_KEY_ITEM
	waitsfx
	writetext DayCareText_NamedTakeCare
	waitbutton
	closetext
	setevent EVENT_GOT_ODD_EGG
  special FadeOutToBlack
  disappear DAYCARE_EGG_CLEFFA
  disappear DAYCARE_EGG_IGGLYBUFF
  disappear DAYCARE_EGG_SMOOCHUM
  disappear DAYCARE_EGG_MAGBY
  disappear DAYCARE_EGG_ELEKID
  disappear DAYCARE_EGG_TYROGUE
  waitsfx
	special FadeInFromBlack
	end

PickEggPichuText:
	text "Looks like an"
	line "electric mouse"
  cont "EGG."

	para "Pick this one?"
	done

PickEggCleffa:
  opentext
	writetext PickEggCleffaText
  yesorno
	closetext
	iftrue .GiveEggCleffa
	end

.GiveEggCleffa:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, PartyFull
	special GiveCleffaEgg
	opentext
	writetext DayCareText_GotOddEgg
  disappear DAYCARE_EGG_CLEFFA
	playsound SFX_KEY_ITEM
	waitsfx
	writetext DayCareText_NamedTakeCare
	waitbutton
	closetext
	setevent EVENT_GOT_ODD_EGG
  special FadeOutToBlack
  disappear DAYCARE_EGG_PICHU
  disappear DAYCARE_EGG_IGGLYBUFF
  disappear DAYCARE_EGG_SMOOCHUM
  disappear DAYCARE_EGG_MAGBY
  disappear DAYCARE_EGG_ELEKID
  disappear DAYCARE_EGG_TYROGUE
  waitsfx
	special FadeInFromBlack
	end

PickEggCleffaText:
	text "Looks like an"
	line "EGG from the"
  cont "moon."

	para "Pick this one?"
	done

PickEggIgglybuff:
  opentext
	writetext PickEggIgglybuffText
  yesorno
	closetext
	iftrue .GiveEggIgglybuff
	end

.GiveEggIgglybuff:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, PartyFull
	special GiveIgglybuffEgg
	opentext
	writetext DayCareText_GotOddEgg
  disappear DAYCARE_EGG_IGGLYBUFF
	playsound SFX_KEY_ITEM
	waitsfx
	writetext DayCareText_NamedTakeCare
	waitbutton
	closetext
	setevent EVENT_GOT_ODD_EGG
  special FadeOutToBlack
  disappear DAYCARE_EGG_PICHU
  disappear DAYCARE_EGG_CLEFFA
  disappear DAYCARE_EGG_SMOOCHUM
  disappear DAYCARE_EGG_MAGBY
  disappear DAYCARE_EGG_ELEKID
  disappear DAYCARE_EGG_TYROGUE
  waitsfx
	special FadeInFromBlack
	end

PickEggIgglybuffText:
	text "Music comes"
	line "from the EGG."

	para "Pick this one?"
	done

PickEggSmoochum:
  opentext
	writetext PickEggSmoochumText
  yesorno
	closetext
	iftrue .GiveEggSmoochum
	end

.GiveEggSmoochum:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, PartyFull
	special GiveSmoochumEgg
	opentext
	writetext DayCareText_GotOddEgg
  disappear DAYCARE_EGG_SMOOCHUM
	playsound SFX_KEY_ITEM
	waitsfx
	writetext DayCareText_NamedTakeCare
	waitbutton
	closetext
	setevent EVENT_GOT_ODD_EGG
  special FadeOutToBlack
  disappear DAYCARE_EGG_PICHU
  disappear DAYCARE_EGG_CLEFFA
  disappear DAYCARE_EGG_IGGLYBUFF
  disappear DAYCARE_EGG_MAGBY
  disappear DAYCARE_EGG_ELEKID
  disappear DAYCARE_EGG_TYROGUE
  waitsfx
	special FadeInFromBlack
	end

PickEggSmoochumText:
	text "This EGG is"
	line "very cold."

	para "Pick this one?"
	done
  
PickEggMagby:
  opentext
	writetext PickEggMagbyText
  yesorno
	closetext
	iftrue .GiveEggMagby
	end

.GiveEggMagby:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, PartyFull
	special GiveMagbyEgg
	opentext
	writetext DayCareText_GotOddEgg
  disappear DAYCARE_EGG_MAGBY
	playsound SFX_KEY_ITEM
	waitsfx
	writetext DayCareText_NamedTakeCare
	waitbutton
	closetext
	setevent EVENT_GOT_ODD_EGG
  special FadeOutToBlack
  disappear DAYCARE_EGG_PICHU
  disappear DAYCARE_EGG_CLEFFA
  disappear DAYCARE_EGG_IGGLYBUFF
  disappear DAYCARE_EGG_SMOOCHUM
  disappear DAYCARE_EGG_ELEKID
  disappear DAYCARE_EGG_TYROGUE
  waitsfx
	special FadeInFromBlack
	end

PickEggMagbyText:
	text "Ouch! The EGG"
	line "is burning hot!"

	para "Pick this one?"
	done
  
PickEggElekid:
  opentext
	writetext PickEggElekidText
  yesorno
	closetext
	iftrue .GiveEggElekid
	end

.GiveEggElekid:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, PartyFull
	special GiveElekidEgg
	opentext
	writetext DayCareText_GotOddEgg
  disappear DAYCARE_EGG_ELEKID
	playsound SFX_KEY_ITEM
	waitsfx
	writetext DayCareText_NamedTakeCare
	waitbutton
	closetext
	setevent EVENT_GOT_ODD_EGG
  special FadeOutToBlack
  disappear DAYCARE_EGG_PICHU
  disappear DAYCARE_EGG_CLEFFA
  disappear DAYCARE_EGG_IGGLYBUFF
  disappear DAYCARE_EGG_SMOOCHUM
  disappear DAYCARE_EGG_MAGBY
  disappear DAYCARE_EGG_TYROGUE
  waitsfx
	special FadeInFromBlack
	end

PickEggElekidText:
	text "This EGG is"
	line "emitting"
  cont "electricity."

	para "Pick this one?"
	done

PickEggTyrogue:
  opentext
	writetext PickEggTyrogueText
  yesorno
	closetext
	iftrue .GiveEggTyrogue
	end

.GiveEggTyrogue:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, PartyFull
	special GiveTyrogueEgg
	opentext
	writetext DayCareText_GotOddEgg
  disappear DAYCARE_EGG_TYROGUE
	playsound SFX_KEY_ITEM
	waitsfx
	writetext DayCareText_NamedTakeCare
	waitbutton
	closetext
	setevent EVENT_GOT_ODD_EGG
  special FadeOutToBlack
  disappear DAYCARE_EGG_PICHU
  disappear DAYCARE_EGG_CLEFFA
  disappear DAYCARE_EGG_IGGLYBUFF
  disappear DAYCARE_EGG_SMOOCHUM
  disappear DAYCARE_EGG_MAGBY
  disappear DAYCARE_EGG_ELEKID
  waitsfx
	special FadeInFromBlack
	end

PickEggTyrogueText:
	text "This EGG has"
	line "a powerful"
  cont "fighting spirit."

	para "Pick this one?"
	done

DayCareLadyScript:
	faceplayer
	opentext
  checkevent EVENT_GOT_ODD_EGG
	iftrue .AlreadyHaveOddEggLady
	writetext DayCareWomanText_GiveOddEgg
  yesorno
	closetext
	iftrue .DayCareLadyGiveEgg
	end

.DayCareLadyGiveEgg:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, PartyFull
	special GiveOddEgg
	opentext
	writetext DayCareText_GotOddEgg
	playsound SFX_KEY_ITEM
	waitsfx
	writetext DayCareText_TakeCare
	waitbutton
	closetext
	setevent EVENT_GOT_ODD_EGG
  special FadeOutToBlack
  disappear DAYCARE_EGG_PICHU
  disappear DAYCARE_EGG_CLEFFA
  disappear DAYCARE_EGG_IGGLYBUFF
  disappear DAYCARE_EGG_SMOOCHUM
  disappear DAYCARE_EGG_MAGBY
  disappear DAYCARE_EGG_ELEKID
  disappear DAYCARE_EGG_TYROGUE
  waitsfx
	special FadeInFromBlack
	end



.AlreadyHaveOddEggLady:
  checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .HusbandWasLookingForYou
	special DayCareLady
	waitbutton
	closetext
	end

.HusbandWasLookingForYou:
	writetext Text_GrampsLookingForYou
	waitbutton
	closetext
	end

PartyFull:
	opentext
	writetext DayCareText_PartyFull
	waitbutton
	closetext
	end



DayCareBookshelf:
	jumpstd DifficultBookshelfScript

Text_GrampsLookingForYou:
	text "Gramps was looking"
	line "for you."
	done

DayCareManText_GiveOddEgg:
	text "I'm the DAY-CARE"
	line "MAN."

	para "Do you know about"
	line "EGGS?"

	para "We were raising"
	line "#MON with my"
	cont "wife, you see."

	para "We were shocked to"
	line "find EGGS!"

	para "How incredible is"
	line "that?"

	para "Well, wouldn't you"
	line "like an EGG?"

	para "You can pick one."

	para "Or my wife"
	line "can give you"
	cont "a random one."
	done

DayCareText_GotOddEgg:
	text "<PLAYER> received"
	line "ODD EGG!"
	done

DayCareText_DescribeOddEgg:
	text "I found that when"
	line "I was caring for"

	para "someone's #MON"
	line "before."

	para "But the trainer"
	line "didn't want the"

	para "EGG, so I'd kept"
	line "it around."
	done

DayCareWomanText_GiveOddEgg:
	text "You can pick"
	line "an EGG"

	para "Or I can"
	line "Give you a"
	cont "random one"

  para "Do you want"
	line "a random EGG?"

  done

DayCareText_TakeCare:
	text "Don't worry"
	line "dear."

	para "We will take"
	line "care of the"
  cont "other EGGs."

	done

DayCareText_NamedTakeCare:
  text "GRANNY: Don't"
	line "worry dear."

	text "We will take"
	line "care of the"
  cont "other EGGs."

	done
DayCareText_PartyFull:
	text "You've no room for"
	line "this."
	done

DayCare_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  5, ROUTE_34, 3
	warp_event  0,  6, ROUTE_34, 4
	warp_event  2,  7, ROUTE_34, 5
	warp_event  3,  7, ROUTE_34, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, DayCareBookshelf
	bg_event  1,  1, BGEVENT_READ, DayCareBookshelf

	def_object_events
	object_event 2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareManScript_Inside, EVENT_DAY_CARE_MAN_IN_DAY_CARE
	object_event 5,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DayCareLadyScript, -1
	object_event 2, 1, SPRITE_EGG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PickEggPichu, EVENT_GOT_ODD_EGG
	object_event 3, 1, SPRITE_EGG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PickEggCleffa, EVENT_GOT_ODD_EGG
	object_event 4, 1, SPRITE_EGG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PickEggIgglybuff, EVENT_GOT_ODD_EGG
	object_event 5, 1, SPRITE_EGG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PickEggSmoochum, EVENT_GOT_ODD_EGG
	object_event 6, 1, SPRITE_EGG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PickEggMagby, EVENT_GOT_ODD_EGG
	object_event 7, 3, SPRITE_EGG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PickEggElekid, EVENT_GOT_ODD_EGG
	object_event 7, 4, SPRITE_EGG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PickEggTyrogue, EVENT_GOT_ODD_EGG