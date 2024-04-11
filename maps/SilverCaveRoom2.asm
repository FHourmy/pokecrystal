	object_const_def
	const SILVERCAVEROOM2_POKE_BALL1
	const SILVERCAVEROOM2_POKE_BALL2
	const SILVERCAVEROOM2_POKE_BALL3
	const SILVERCAVEROOM2_ARTHUR
	const SILVERCAVEROOM2_MATT
	; const SILVERCAVEROOM2_PHIL
	; const SILVERCAVEROOM2_HUGO

SilverCaveRoom2_MapScripts:
	def_scene_scripts

	def_callbacks

SilverCaveRoom2Calcium:
	itemball CALCIUM

SilverCaveRoom2UltraBall:
	itemball ULTRA_BALL

SilverCaveRoom2PPUp:
	itemball PP_UP

SilverCaveRoom2HiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_SILVER_CAVE_ROOM_2_HIDDEN_MAX_POTION

TrainerShinyHunterArthurSilverCave:
	trainer SHINYHUNTER, ARTHUR5, EVENT_BEAT_SHINYHUNTER_ARTHUR5, ShinyHunterArthur5SeenText, ShinyHunterArthur5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ShinyHunterArthur5BeatenText
	waitbutton
	closetext
	end

ShinyHunterArthur5SeenText:
	text "ARTHUR: Look look!"
	line "I am a top trainer"

  para "I will show you"
	line "one last time..."

  para "HOW COOL MY"
	line "#MON ARE !!!"

	done

ShinyHunterArthur5BeatenText:
	text "You are awesome!"

  para "Good luck with"
	line "the others"
	cont "beautiful !"

	done

TrainerStrongmanMattSilverCave:
	trainer STRONGMAN, MATT5, EVENT_BEAT_STRONGMAN_MATT5, StrongmanMatt5SeenText, StrongmanMatt5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext StrongmanMatt5BeatenText
	waitbutton
	closetext
	end

StrongmanMatt5SeenText:
	text "MATT: After"
	line "beating BRUNO I"
	cont "became the"

  para "STRONGEST MAN"
	line "alive."

  para "You want to be "
	line "the STRONGEST "
	cont "TRAINER ?"

  para "Let's see if"
	line "you have what"
	cont "it takes !"

	done

StrongmanMatt5BeatenText:
	text "Impressive."

  para "Defeat the other"
	line "trainers in the "
	cont "cave."

  para "Then you will be"
	line "the STRONGEST"
	cont "TRAINER."

	done

;; PHIL
; TrainerShinyHunterArthurSilverCave:
; 	trainer SHINYHUNTER, ARTHUR5, EVENT_BEAT_SHINYHUNTER_ARTHUR5, ShinyHunterArthur5SeenText, ShinyHunterArthur5BeatenText, 0, .Script

; .Script:
; 	endifjustbattled
; 	opentext
; 	writetext ShinyHunterArthur5BeatenText
; 	waitbutton
; 	closetext
; 	end

; ShinyHunterArthur5SeenText:
; 	text "ARTHUR: Look look!"
; 	line "I am a top trainer"

;   para "I will show you"
; 	line "one last time..."

;   para "HOW COOL MY"
; 	line "#MON ARE !!!"

; 	done

; ShinyHunterArthur5BeatenText:
; 	text "You are awesome!"

;   para "Good luck with"
; 	line "the others"
; 	cont "beautiful !"

; 	done

  ;; HUGO
; TrainerShinyHunterArthurSilverCave:
; 	trainer SHINYHUNTER, ARTHUR5, EVENT_BEAT_SHINYHUNTER_ARTHUR5, ShinyHunterArthur5SeenText, ShinyHunterArthur5BeatenText, 0, .Script

; .Script:
; 	endifjustbattled
; 	opentext
; 	writetext ShinyHunterArthur5BeatenText
; 	waitbutton
; 	closetext
; 	end

; ShinyHunterArthur5SeenText:
; 	text "ARTHUR: Look look!"
; 	line "I am a top trainer"

;   para "I will show you"
; 	line "one last time..."

;   para "HOW COOL MY"
; 	line "#MON ARE !!!"

; 	done

; ShinyHunterArthur5BeatenText:
; 	text "You are awesome!"

;   para "Good luck with"
; 	line "the others"
; 	cont "beautiful !"

; 	done

SilverCaveRoom2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 31, SILVER_CAVE_ROOM_1, 2
	warp_event 11,  5, SILVER_CAVE_ROOM_3, 1
	warp_event 13, 21, SILVER_CAVE_ITEM_ROOMS, 1
	warp_event 23,  3, SILVER_CAVE_ITEM_ROOMS, 2

	def_coord_events

	def_bg_events
	bg_event 14, 31, BGEVENT_ITEM, SilverCaveRoom2HiddenMaxPotion

	def_object_events
	object_event 24, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom2Calcium, EVENT_SILVER_CAVE_ROOM_2_CALCIUM
	object_event 22, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom2UltraBall, EVENT_SILVER_CAVE_ROOM_2_ULTRA_BALL
	object_event  4, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom2PPUp, EVENT_SILVER_CAVE_ROOM_2_PP_UP
  object_event 16, 16, SPRITE_SHINYHUNTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerShinyHunterArthurSilverCave, -1
  object_event 18, 16, SPRITE_STRONGMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerStrongmanMattSilverCave, -1
  ; object_event 20, 16, SPRITE_SHINYHUNTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerShinyHunterArthurSilverCave, -1
  ; object_event 22, 16, SPRITE_SHINYHUNTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerShinyHunterArthurSilverCave, -1
