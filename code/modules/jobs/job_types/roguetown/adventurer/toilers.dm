/datum/job/roguetown/toiler
	title = "Toiler"
	flag = TOILER
	department_flag = KOBOLD
	faction = "Station"
	total_positions = 10
	spawn_positions = 10
	allowed_races = list(
		/datum/species/kobold
	)
	tutorial = "You were clutched and raised in the Kobold Village, and owe a great deal of loyalty to your community. Your life has been spent in commitment to one dedicated calling, and you are respected in the community for this vocation. Serve the village well!"
	advclass_cat_rolls = list(CTAG_TOILER = 20)
	outfit = null
	outfit_female = null
	bypass_lastclass = TRUE
	display_order = JDO_TOILER
	give_bank_account = FALSE
	min_pq = 4
	max_pq = null
	wanderer_examine = FALSE
	advjob_examine = TRUE
	always_show_on_latechoices = FALSE
	same_job_respawn_delay = 0

	

/datum/job/roguetown/toiler/after_spawn(mob/living/L, mob/M, latejoin = TRUE)
	..()
	if(L)
		var/mob/living/carbon/human/H = L
		H.advsetup = 1
		H.invisibility = INVISIBILITY_MAXIMUM
		H.become_blind("advsetup")
