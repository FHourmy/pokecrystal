	object_const_def
	const OLIVINELIGHTHOUSE5F_SAILOR
	const OLIVINELIGHTHOUSE5F_YOUNGSTER
	const OLIVINELIGHTHOUSE5F_POKE_BALL1
	const OLIVINELIGHTHOUSE5F_POKE_BALL2
	const OLIVINELIGHTHOUSE5F_POKE_BALL3
	const OLIVINELIGHTHOUSE5F_DOCTOR_PHIL
	const OLIVINELIGHTHOUSE5F_AMPHAROS

OlivineLighthouse5F_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineLighthouse5FNoop1Scene:
	end

OlivineLighthouse5FNoop2Scene:
	end

OlivineLighthouse5FAmpharos:
  opentext
	writetext OlivineLighthouse5FAmpharosText
	waitbutton
	closetext
  end

OlivineLighthouse5FDoctorPhil:
  faceplayer
  special FadeOutMusic
  playmusic MUSIC_HIKER_ENCOUNTER
  opentext
	writetext OlivineLighthouse5FDoctorPhilBeforeBattleText
	waitbutton
	closetext
	pause 10
  opentext
  writetext PlayerHandedSecretpotionToDoctorPhilText
	promptbutton
	closetext
	pause 10
  opentext
  writetext DoctorPhilImprovesSecretpotionText
	promptbutton
	closetext

	turnobject OLIVINELIGHTHOUSE5F_DOCTOR_PHIL, RIGHT
	cry AMPHAROS
	pause 10
	playmusic MUSIC_HEAL
	pause 60
  playmusic MUSIC_HIKER_ENCOUNTER
  faceplayer
  opentext
  writetext DoctorPhilHandedSecretpotionText
	promptbutton
	closetext

  opentext
	writetext OlivineLighthouse5FDoctorPhilBeforeBattleText2
	waitbutton
	closetext

	winlosstext OlivineLighthouse5FDoctorPhilWinText, 0
	loadtrainer DOCTOR, PHIL3
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
  playmusic MUSIC_HIKER_ENCOUNTER
	opentext
	writetext OlivineLighthouse5FDoctorPhilAfterText
	waitbutton
	closetext
	playsound SFX_EXIT_BUILDING
	setevent EVENT_DOCTOR_PHIL_6
  setevent EVENT_DOCTOR_PHIL_5 ; remove from secret potion
  special FadeOutToBlack
	disappear OLIVINELIGHTHOUSE5F_AMPHAROS
	disappear OLIVINELIGHTHOUSE5F_DOCTOR_PHIL
  waitsfx
	special FadeInFromBlack
	waitsfx
	pause 15
	playmapmusic
  end

TrainerBirdKeeperDenis:
	trainer BIRD_KEEPER, DENIS, EVENT_BEAT_BIRD_KEEPER_DENIS, BirdKeeperDenisSeenText, BirdKeeperDenisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperDenisAfterBattleText
	waitbutton
	closetext
	end

TrainerSailorErnest:
	trainer SAILOR, ERNEST, EVENT_BEAT_SAILOR_ERNEST, SailorErnestSeenText, SailorErnestBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorErnestAfterBattleText
	waitbutton
	closetext
	end

OlivineLighthouse5FRareCandy:
	itemball RARE_CANDY

OlivineLighthouse5FSuperRepel:
	itemball SUPER_REPEL

OlivineLighthouse5FTMSwagger:
	itemball TM_SWAGGER

OlivineLighthouse5FHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_OLIVINE_LIGHTHOUSE_5F_HIDDEN_HYPER_POTION

SailorErnestSeenText:
	text "I wanted to battle"
	line "JASMINE, but she's"

	para "not up to it now."
	line "So, how about you?"
	done

SailorErnestBeatenText:
	text "Whoa, whoa. You're"
	line "overwhelming!"
	done

SailorErnestAfterBattleText:
	text "A GYM LEADER isn't"
	line "just about being"

	para "strong. A LEADER"
	line "also needs to be"
	cont "compassionate."
	done

BirdKeeperDenisSeenText:
	text "We're pretty high"
	line "up here. My bird"

	para "#MON are in"
	line "prime form."
	done

BirdKeeperDenisBeatenText:
	text "Oops…They crashed…"
	done

BirdKeeperDenisAfterBattleText:
	text "My #MON learned"
	line "how to use FLY in"
	cont "CIANWOOD."

	para "Well, since I'm a"
	line "loser, I'll FLY"
	cont "across the sea…"
	done

  OlivineLighthouse5FAmpharosText:
	text "AMPHAROS: ..."
	done

OlivineLighthouse5FDoctorPhilBeforeBattleText:
	text "DR PHIL: STOP!"

	para "The SECRETPOTION"
	line "is not enough"
	cont "for an AMPHAROS."

	para "It will be"
	line "nullified by its"
	cont "electricity."

	para "give it to me"
	line "i will improve it."

	done

DoctorPhilImprovesSecretpotionText:
	text "DR PHIL: I am"
	line "adding some"
	cont "SLOWPOKETAIL"
  
  para "It will counteract"
  line "the electricity."

  para "And some "
	line "MOOMOO MILK for"
	cont "the taste."

  para "The RATTATAs"
  line "loved it."

  para "Now we need"
  line "to try it."

	done

PlayerHandedSecretpotionToDoctorPhilText:
	text "<PLAYER> handed the"
	line "SECRETPOTION to"
	cont "DR PHIL."
	done

DoctorPhilHandedSecretpotionText:
	text "DR PHIL handed the"
	line "SECRETPOTION to"
	cont "<PLAYER>."
	done

OlivineLighthouse5FDoctorPhilBeforeBattleText2:
	text "Looks like"
	line "it worked."

	para "Yes i studied"
	line "this stuff to cure"
	cont "my own AMPHAROS."

	para "Now, to be sure"
	line "Let's try a fight!"
	done

OlivineLighthouse5FDoctorPhilWinText:
	text "Yep, looks like"
	line "it worked."
	done

OlivineLighthouse5FDoctorPhilAfterText:
	text "What are you"
	line "still doing"
	cont "here ?"

	para "Go take the"
	line "SECRETPOTION to"
	cont "JASMINE."

	para "Me? I'm going"
	line "to keep working"
	cont "on this potion."

	para "It seems to have"
	line "some interesting"
	cont "side effects..."
	done

OlivineLighthouse5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 15, OLIVINE_LIGHTHOUSE_6F, 1
	warp_event  3,  5, OLIVINE_LIGHTHOUSE_4F, 2
	warp_event  9,  7, OLIVINE_LIGHTHOUSE_4F, 3
	warp_event 16,  7, OLIVINE_LIGHTHOUSE_4F, 9
	warp_event 17,  7, OLIVINE_LIGHTHOUSE_4F, 10
	warp_event 16,  5, OLIVINE_LIGHTHOUSE_6F, 2
	warp_event 17,  5, OLIVINE_LIGHTHOUSE_6F, 3

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_ITEM, OlivineLighthouse5FHiddenHyperPotion

	def_object_events
	object_event  8, 11, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSailorErnest, -1
	object_event  8,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBirdKeeperDenis, -1
	object_event 15, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, OlivineLighthouse5FRareCandy, EVENT_OLIVINE_LIGHTHOUSE_5F_RARE_CANDY
	object_event  6, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, OlivineLighthouse5FSuperRepel, EVENT_OLIVINE_LIGHTHOUSE_5F_SUPER_REPEL
	object_event  2, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, OlivineLighthouse5FTMSwagger, EVENT_OLIVINE_LIGHTHOUSE_5F_TM_SWAGGER
  object_event  9, 15, SPRITE_DOCTOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineLighthouse5FDoctorPhil, EVENT_DOCTOR_PHIL_6
  object_event 10, 15, SPRITE_AMPHAROS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, OlivineLighthouse5FAmpharos, EVENT_DOCTOR_PHIL_6
