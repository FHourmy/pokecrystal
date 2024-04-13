  object_const_def
  const SILVERCAVE_GUIDE_HUGO

SilverCaveOutside_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SilverCaveOutsideFlypointCallback

SilverCaveOutsideFlypointCallback:
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	endcallback

MtSilverPokecenterSign:
	jumpstd PokecenterSignScript

MtSilverSign:
	jumptext MtSilverSignText

SilverCaveOutsideHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_SILVER_CAVE_OUTSIDE_HIDDEN_FULL_RESTORE

MtSilverSignText:
	text "MT.SILVER"
	done

SilverCaveGuideHugoScript:
  faceplayer
	opentext
	checkevent EVENT_BEAT_GUIDE_HUGO_SILVERCAVE
	iftrue .FightDone
	writetext SilverCaveGuideHugoBeforeFightText
	waitbutton
  yesorno
	iffalse .End
	closetext
	winlosstext SilverCaveGuideHugoBeatenText, 0
	loadtrainer GUIDE, HUGO9
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GUIDE_HUGO_SILVERCAVE
.FightDone
	opentext
  writetext SilverCaveGuideHugoAfterFightText
	waitbutton
	closetext
  end

.End
	closetext
  end

SilverCaveGuideHugoBeforeFightText:
  text "HUGO: Hey Champ!"
	line "Welcome to"
	cont "Silver Cave."

	para "This is your"
	line "final challenge."

	para "If you beat me in"
	line "a fight i'll give"
	cont "you some top info!"

	para "Want to battle ?"

	done

SilverCaveGuideHugoBeatenText:
  text "Nice one Champ !"
	done

SilverCaveGuideHugoAfterFightText:
	text "I'm really proud"
	line "of you!"

  para "In there, the"
  line "strongest trainers"
  cont "await you."

  para "Prepare your top"
	line "team,"

  para "and claim the"
	line "title of"
  cont "best trainer."

	done

SilverCaveOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 19, SILVER_CAVE_POKECENTER_1F, 1
	warp_event 18, 11, SILVER_CAVE_ROOM_1, 1

	def_coord_events

	def_bg_events
	bg_event 24, 19, BGEVENT_READ, MtSilverPokecenterSign
	bg_event 17, 13, BGEVENT_READ, MtSilverSign
	bg_event  9, 25, BGEVENT_ITEM, SilverCaveOutsideHiddenFullRestore

	def_object_events
	object_event 19, 12, SPRITE_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCaveGuideHugoScript, -1
