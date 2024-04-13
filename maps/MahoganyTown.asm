DEF MAHOGANYTOWN_RAGECANDYBAR_PRICE EQU 300

	object_const_def
	const MAHOGANYTOWN_GRAMPS
	const MAHOGANYTOWN_FISHER
	const MAHOGANYTOWN_LASS
	const MAHOGANYTOWN_ARTHUR
	const MAHOGANYTOWN_GUIDE_HUGO

MahoganyTown_MapScripts:
	def_scene_scripts
	scene_script MahoganyTownNoop1Scene, SCENE_MAHOGANYTOWN_ARTHUR_BATTLE
	scene_script MahoganyTownNoop2Scene, SCENE_MAHOGANYTOWN_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, MahoganyTownFlypointCallback

MahoganyTownNoop1Scene:
	end

MahoganyTownNoop2Scene:
	end

MahoganyTownFlypointCallback:
	setflag ENGINE_FLYPOINT_MAHOGANY
	endcallback

MahoganyArthurBattleScene:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	pause 15
	appear MAHOGANYTOWN_ARTHUR
	applymovement MAHOGANYTOWN_ARTHUR, MahoganyArthurBattleApproachMovement

MahoganyArthurBattleScript:
	opentext
	writetext MahoganyArthurBeforeText
	waitbutton
	closetext
	winlosstext MahoganyArthurWinText, 0
	loadtrainer SHINYHUNTER, ARTHUR3
	startbattle
	reloadmapafterbattle
	opentext
	writetext MahoganyArthurAfterText
	waitbutton
	closetext
	applymovement MAHOGANYTOWN_ARTHUR, MahoganyArthurBattleExitMovement
	disappear MAHOGANYTOWN_ARTHUR
	setscene SCENE_MAHOGANYTOWN_NOOP
	waitsfx
	end

MahoganyTownGrampsScript:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .ClearedRocketHideout
	writetext MahoganyTownGrampsText
	waitbutton
	closetext
	end

.ClearedRocketHideout:
	writetext MahoganyTownGrampsText_ClearedRocketHideout
	waitbutton
	closetext
	end

MahoganyTownFisherScript:
	jumptextfaceplayer MahoganyTownFisherText

MahoganyTownLassScript:
	jumptextfaceplayer MahoganyTownLassText

MahoganyTownSign:
	jumptext MahoganyTownSignText

MahoganyTownRagecandybarSign:
	jumptext MahoganyTownRagecandybarSignText

MahoganyGymSign:
	jumptext MahoganyGymSignText

MahoganyTownPokecenterSign:
	jumpstd PokecenterSignScript

MahoganyGuideHugoScript:
  faceplayer
	opentext
	checkevent EVENT_BEAT_GUIDE_HUGO_MAHOGANY
	iftrue .FightDone
	writetext MahoganyGuideHugoBeforeFightText
	waitbutton
  yesorno
	iffalse .End
	closetext
	winlosstext MahoganyGuideHugoBeatenText, 0
	loadtrainer GUIDE, HUGO7
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GUIDE_HUGO_MAHOGANY
.FightDone
	opentext
  writetext MahoganyGuideHugoAfterFightText
	waitbutton
	closetext
  end

.End
	closetext
  end


MahoganyTownGrampsText:
	text "Are you off to see"
	line "the GYARADOS ram-"
	cont "page at the LAKE?"
	done

MahoganyTownGrampsText_ClearedRocketHideout:
	text "MAGIKARP have"
	line "returned to LAKE"
	cont "OF RAGE."

	para "That should be"
	line "good news for the"
	cont "anglers there."
	done

MahoganyTownFisherText:
	text "Since you came"
	line "this far, take the"

	para "time to do some"
	line "sightseeing."

	para "You should head"
	line "north and check"

	para "out LAKE OF RAGE"
	line "right now."
	done

MahoganyTownLassText:
	text "Visit Grandma's"
	line "shop. She sells"

	para "stuff that nobody"
	line "else has."
	done

MahoganyTownSignText:
	text "MAHOGANY TOWN"

	para "Welcome to the"
	line "Home of the Ninja"
	done

MahoganyTownRagecandybarSignText:
	text "While visiting"
	line "MAHOGANY TOWN, try"
	cont "a RAGECANDYBAR!"
	done

MahoganyGymSignText:
	text "MAHOGANY TOWN"
	line "#MON GYM"
	cont "LEADER: PRYCE"

	para "The Teacher of"
	line "Winter's Harshness"
	done

MahoganyArthurBeforeText:
	text "ARTHUR: Look look!"
	line "I've got a gold"
	cont "giant MAGIKARP !"
	done

MahoganyArthurWinText:
	text "MAGIKARP is gold"
	line "and giant, but..."

	para "he's not strong."

  para "Still it looks"
  cont "AWESOME !!"

	done

MahoganyArthurAfterText:
	text "It took me"
	line "fishing 8192"
	cont "MAGIKARP."

	para "I've got a lot"
	line "of cool"
	cont "#MON now."

	para "I thinks i'm"
	line "going to train"
	cont "for a bit now."

	para "See you !"

	done

MahoganyGuideHugoBeforeFightText:
  text "HUGO: Hey man !"
	line "Welcome to"
	cont "Mahogany Town."

	para "There is some"
	line "strange vibe"
	cont "around..."

	para "If you beat me in"
	line "a fight i'll give"
	cont "you some top info!"

	para "Want to battle ?"

	done

MahoganyGuideHugoBeatenText:
  text "Nice one man !"
	done

MahoganyGuideHugoAfterFightText:
	text "The shiny guy"
	line "is at the lake !"

  para "He is screaming"
  line "at everyone about"
  cont "a golden MAGIKARP."

  para "The strong-crazy"
	line "guy came through"
	cont "the town too."

  para "He was talking"
	line "about ice skating"
	cont "..."

  para "!"

  para "Might have been"
	line "ice training!"

  para "Be careful of the"
	line "town mart."

  para "It is looking a"
	line "bit shady if you"
	cont "want my opinion."

	done

MahoganyArthurBattleApproachMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

MahoganyArthurBattleExitMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

MahoganyTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  7, MAHOGANY_MART_1F, 1
	warp_event 17,  7, MAHOGANY_RED_GYARADOS_SPEECH_HOUSE, 1
	warp_event  6, 13, MAHOGANY_GYM, 1
	warp_event 15, 13, MAHOGANY_POKECENTER_1F, 1
	warp_event  9,  1, ROUTE_43_MAHOGANY_GATE, 3

	def_coord_events
	coord_event 6, 14, SCENE_MAHOGANYTOWN_ARTHUR_BATTLE, MahoganyArthurBattleScene

	def_bg_events
	bg_event  1,  5, BGEVENT_READ, MahoganyTownSign
	bg_event  9,  7, BGEVENT_READ, MahoganyTownRagecandybarSign
	bg_event  3, 13, BGEVENT_READ, MahoganyGymSign
	bg_event 16, 13, BGEVENT_READ, MahoganyTownPokecenterSign

	def_object_events
	object_event  6,  9, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyTownGrampsScript, -1
	object_event  6, 14, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MahoganyTownFisherScript, EVENT_MAHOGANY_TOWN_POKEFAN_M_BLOCKS_GYM
	object_event 12,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyTownLassScript, EVENT_MAHOGANY_MART_OWNERS
  object_event 11, 14, SPRITE_SHINYHUNTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SHINYHUNTER_ARTHUR_3
	object_event 17, 14, SPRITE_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyGuideHugoScript, -1
