/datum/advclass/gigglewhelp
	name = "Gigglewhelp"
	tutorial = "You serve at the whims of Nixor, great jokester that he is. With every passing week, the wheel of fortune spins and you find yourself the subject of a new grand jape, what does the great clown dragon have in store for you this time?"
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Kobold",
	)
	vampcompat = FALSE
	outfit = /datum/outfit/job/roguetown/kobold/gigglewhelp
	category_tags = list(CTAG_TOILER)
	maxchosen = 1
	pickprob = 100
	spells = list(/obj/effect/proc_holder/spell/self/telljoke,/obj/effect/proc_holder/spell/self/telltragedy)

/datum/outfit/job/roguetown/kobold/gigglewhelp
	allowed_patrons = list(/datum/patron/draconic/nixor)

/datum/outfit/job/roguetown/gigglewhelp/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = /obj/item/clothing/shoes/roguetown/jester
	pants = /obj/item/clothing/under/roguetown/tights
	armor = /obj/item/clothing/suit/roguetown/shirt/jester
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/flashlight/flare/torch/lantern
	beltl = /obj/item/storage/belt/rogue/pouch
	head = /obj/item/clothing/head/roguetown/jester
	r_hand = /obj/item/rogueweapon/huntingknife/idagger/steel
	if(H.mind)
  		H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/stealing, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/music, 3, TRUE)
		H.STASTR = rand(1, 20)
		H.STAINT = rand(1, 20)
		H.STALUC = rand(1, 20)
		H.STAPER = rand(1, 20)
		H.STACON = rand(1, 20)
		H.STASPD = rand(1, 20)
		H.STAEND = rand(1, 20)

		H.cmode_music = 'sound/music/combat_jester.ogg'

	ADD_TRAIT(H, TRAIT_ZJUMP, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_LEAPER, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NUTCRACKER, TRAIT_GENERIC)
