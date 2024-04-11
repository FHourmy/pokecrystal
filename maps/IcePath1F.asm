	object_const_def
	const ICEPATH1F_POKE_BALL1
	const ICEPATH1F_POKE_BALL2
	const ICEPATH1F_POKE_BALL3
	const ICEPATH1F_MATT

IcePath1F_MapScripts:
	def_scene_scripts
	scene_script IcePathB1fNoop1Scene, SCENE_ICE_PATH_B1F_MATT_BATTLE
	scene_script IcePathB1fNoop2Scene, SCENE_ICE_PATH_B1F_NOOP

	def_callbacks

IcePathB1fNoop1Scene:
	end

IcePathB1fNoop2Scene:
	end

IcePathB1fMattBattleScene:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	pause 15
	appear ICEPATH1F_MATT
	applymovement ICEPATH1F_MATT, IcePathB1fMattBattleApproachMovement

IcePathB1fMattBattleScript:
	opentext
	writetext IcePathB1fMattBeforeText
	waitbutton
	closetext
	winlosstext IcePathB1fMattWinText, 0
	loadtrainer STRONGMAN, MATT3
	startbattle
	reloadmapafterbattle
	opentext
	writetext IcePathB1fMattAfterText
	waitbutton
	closetext
	applymovement ICEPATH1F_MATT, IcePathB1fMattBattleExitMovement
	setevent EVENT_STRONGMAN_MATT_2; remove matt from burned tower and route 29
	disappear ICEPATH1F_MATT
	setscene SCENE_ICE_PATH_B1F_NOOP
	waitsfx
	end

IcePathB1fMattBattleApproachMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

IcePathB1fMattBattleExitMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

IcePathB1fMattBeforeText:
	text "MATT: Hey you"
	line "came for training?"

	para "It's chilly in"
	line "there."

	para "A fight will"
	line "help against"
  cont "the cold !"

  done

IcePathB1fMattWinText:
	text "What a fight!"

	para "And we can't"
	line "feel the cold"
  cont "anymore."

	done

IcePathB1fMattAfterText:
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
	coord_event 6, 14, SCENE_ICE_PATH_B1F_MATT_BATTLE, IcePathB1fMattBattleScene

	def_bg_events

	def_object_events
	object_event 31,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FHMWaterfall, EVENT_GOT_HM07_WATERFALL
	object_event 32, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FPPUp, EVENT_ICE_PATH_1F_PP_UP
	object_event 35,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FProtein, EVENT_ICE_PATH_1F_PROTEIN
  object_event 11, 14, SPRITE_STRONGMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_STRONGMAN_MATT_3
