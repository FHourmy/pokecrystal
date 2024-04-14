	object_const_def
	const ICEPATH1F_POKE_BALL1
	const ICEPATH1F_POKE_BALL2
	const ICEPATH1F_POKE_BALL3
	const ICEPATH1F_MATT

IcePath1F_MapScripts:
	def_scene_scripts

	def_callbacks


IcePathMatt:
	checkevent EVENT_STRONGMAN_MATT_3
	iffalse .IcePathMattBattleScript
  opentext
	writetext IcePathMattAfterText
	waitbutton
	closetext
  end
  
.IcePathMattBattleScript:
  special FadeOutMusic
  playmusic MUSIC_HIKER_ENCOUNTER
  faceplayer
	opentext
	writetext IcePathMattBeforeText
	waitbutton
	closetext
	winlosstext IcePathMattWinText, 0
	loadtrainer STRONGMAN, MATT3
	startbattle
	reloadmapafterbattle
	opentext
	writetext IcePathMattAfterText
	waitbutton
	closetext
	setevent EVENT_STRONGMAN_MATT_3; remove matt from ice cave
	setevent EVENT_STRONGMAN_MATT_2; remove matt from burned tower and route 29
	playmapmusic
	end

IcePath1FHitmonchan:
	cry HITMONCHAN
	opentext
	writetext IcePathHitmonchanText
	waitbutton
	closetext
	end

IcePathHitmonchanText:
  text "HITMONCHAN: PUNCH"
	line "PUNCH"
	done

IcePathMattBeforeText:
	text "MATT: Hey you"
	line "came for training?"

	para "It's chilly in"
	line "there. Even with"
  cont "YOUTH POWER."

	para "A fight will"
	line "help against"
  cont "the cold !"

  done

IcePathMattWinText:
	text "What a fight!"

	para "And we can't"
	line "feel the cold"
  cont "anymore."

	done

IcePathMattAfterText:
	text "You are a strong"
	line "trainer."

	para "But you could"
	line "use a little"
	cont "muscle."

	para "I will keep"
	line "training and"
	cont "getting stronger."

	para "Maybe train"
	line "my #MON"
	cont "too."

	para "See you next"
	line "time."

	done

IcePath1FHMWaterfall:
	itemball HM_WATERFALL

IcePath1FPPUp:
	itemball PP_UP

IcePath1FProtein:
	itemball PROTEIN

IcePath1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 19, ROUTE_44, 1
	warp_event 36, 27, BLACKTHORN_CITY, 7
	warp_event 37,  5, ICE_PATH_B1F, 1
	warp_event 37, 13, ICE_PATH_B1F, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event 31,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FHMWaterfall, EVENT_GOT_HM07_WATERFALL
	object_event 32, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FPPUp, EVENT_ICE_PATH_1F_PP_UP
	object_event 35,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FProtein, EVENT_ICE_PATH_1F_PROTEIN
  object_event 10, 15, SPRITE_STRONGMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcePathMatt, EVENT_STRONGMAN_MATT_3
  object_event 11, 15, SPRITE_HITMONCHAN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, IcePath1FHitmonchan, EVENT_STRONGMAN_MATT_3
