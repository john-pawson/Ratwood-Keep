/datum/job/roguetown/spotter
	title = "Spotter"
	flag = SPOTTER
	department_flag = KOBOLD
	faction = "Station"
	total_positions = 6
	spawn_positions = 6
	allowed_races = list(
		/datum/species/kobold
	)
	tutorial = "You were clutched and raised in the Kobold Village, and owe a great deal of loyalty to your community. Up until now, you've only seen a few clashes, but that promises to change soon... Be vigilant and guard your kin against the dangers of the Bog!"
	advclass_cat_rolls = list(CTAG_SPOTTER = 20)
	outfit = null
	outfit_female = null
	bypass_lastclass = TRUE
	display_order = JDO_SPOTTER
	give_bank_account = FALSE
	min_pq = 4
	max_pq = null
	wanderer_examine = FALSE
	advjob_examine = TRUE
	always_show_on_latechoices = FALSE
	same_job_respawn_delay = 0

	

/datum/job/roguetown/spotter/after_spawn(mob/living/L, mob/M, latejoin = TRUE)
	..()
	if(L)
		var/mob/living/carbon/human/H = L
		H.advsetup = 1
		H.invisibility = INVISIBILITY_MAXIMUM
		H.become_blind("advsetup")
