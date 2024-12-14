local ConROC_Priest, ids = ...;

--General
ids.Racial = {
	Berserking = 26297,
	Perception = 20600,
	Shadowmeld = 20580,
}
ids.Spec = {
	Discipline = 1,
	Holy = 2,
	Shadow = 3,
}
ids.Caster = {
	Shoot = 5019,
}
ids.Ability = {
--Discipline
	DispelMagic = 527,
	DivineSpirit = 14752,
	InnerFire = 588,
	InnerFocus = 14751,
	Levitate = 1706,
	ManaBurn = 8129,
	PowerInfusion = 10060,
	PowerWordFortitude = 1243,
	PowerWordShield = 17,
	PrayerofFortitude = 21562,
	PrayerofSpirit = 27681,
	ShackleUndead = 9484,
	--Dwarf exclusive
	FearWard = 6346,
	--Night elf exclusive
	ElunesGrace = 2651,
	Starshards = 10797,
	--Human exclusive
	Feedback = 13896,
--Holy
	AbolishDisease = 552,
	CureDisease = 528,
	DesperatePrayer = 13908, -- Dwarf & Human priests only
	FlashHeal = 2061,
	GreaterHeal = 2060,
	Heal = 2054,
	HolyFire = 14914,
	HolyNova = 15237,
	LesserHeal = 2050,
	Lightwell = 724,
	PrayerofHealing = 596,
	Renew = 139,
	Resurrection = 2006,
	Smite = 585,
--Shadow
	DevouringPlague = 2944, --Undead exclusive
	Fade = 586,
	HexofWeakness = 9035, --Troll exclusive
	MindBlast = 8092,
	MindControl = 605,
	MindFlay = 15407,
	MindSoothe = 453,
	MindVision = 2096,
	PsychicScream = 8122,
	ShadowProtection = 976,
	ShadowWordPain = 589,
	Shadowform = 15473,
	Shadowguard = 18137, --Troll exclusive
	Silence = 15487,
	TouchofWeakness = 2652,
	VampiricEmbrace = 15286,
}
ids.Rank = {
--Discipline
	DispelMagicRank1 = 527,
	DispelMagicRank2 = 988,
	DivineSpiritRank1 = 14752,
	DivineSpiritRank2 = 14818,
	DivineSpiritRank3 = 14819,
	DivineSpiritRank4 = 27841,
	InnerFireRank1 = 588,
	InnerFireRank2 = 7128,
	InnerFireRank3 = 602,
	InnerFireRank4 = 1006,
	InnerFireRank5 = 10951,
	InnerFireRank6 = 10952,
	ManaBurnRank1 = 8129,
	ManaBurnRank2 = 8131,
	ManaBurnRank3 = 10874,
	ManaBurnRank4 = 10875,
	ManaBurnRank5 = 10876,
	PowerWordFortitudeRank1 = 1243,
	PowerWordFortitudeRank2 = 1244,
	PowerWordFortitudeRank3 = 1245,
	PowerWordFortitudeRank4 = 2791,
	PowerWordFortitudeRank5 = 10937,
	PowerWordFortitudeRank6 = 10938,
	PowerWordShieldRank1 = 17,
	PowerWordShieldRank2 = 592,
	PowerWordShieldRank3 = 600,
	PowerWordShieldRank4 = 3747,
	PowerWordShieldRank5 = 6065,
	PowerWordShieldRank6 = 6066,
	PowerWordShieldRank7 = 10898,
	PowerWordShieldRank8 = 10899,
	PowerWordShieldRank9 = 10900,
	PowerWordShieldRank10 = 10901,
	PrayerofFortitudeRank1 = 21562,
	PrayerofFortitudeRank2 = 21564,
	PrayerofSpiritRank1 = 27681,
	ShackleUndeadRank1 = 9484,
	ShackleUndeadRank2 = 9485,
	ShackleUndeadRank3 = 10955,
	--Night elf exclusive
	ElunesGraceRank1 = 2651,
	ElunesGraceRank2 = 19289,
	ElunesGraceRank3 = 19291,
	ElunesGraceRank4 = 19292,
	ElunesGraceRank5 = 19293,
	StarshardsRank1 = 10797,
	StarshardsRank2 = 19296,
	StarshardsRank3 = 19299,
	StarshardsRank4 = 19302,
	StarshardsRank5 = 19303,
	StarshardsRank6 = 19304,
	StarshardsRank7 = 19305,
	--Human exclusive
	FeedbackRank1 = 13896,
	FeedbackRank2 = 19271,
	FeedbackRank3 = 19273,
	FeedbackRank4 = 19274,
	FeedbackRank5 = 19275,
--Holy
	DesperatePrayerRank1 = 13908, -- Dwarf & Human priests only
	DesperatePrayerRank2 = 19236,
	DesperatePrayerRank3 = 19238,
	DesperatePrayerRank4 = 19240,
	DesperatePrayerRank5 = 19241,
	DesperatePrayerRank6 = 19242,
	DesperatePrayerRank7 = 19243,
	FlashHealRank1 = 2061,
	FlashHealRank2 = 9472,
	FlashHealRank3 = 9473,
	FlashHealRank4 = 9474,
	FlashHealRank5 = 10915,
	FlashHealRank6 = 10916,
	FlashHealRank7 = 10917,
	GreaterHealRank1 = 2060,
	GreaterHealRank2 = 10963,
	GreaterHealRank3 = 10964,
	GreaterHealRank4 = 10965,
	GreaterHealRank5 = 25314,
	HealRank1 = 2054,
	HealRank2 = 2055,
	HealRank3 = 6063,
	HealRank4 = 6064,
	HolyFireRank1 = 14914,
	HolyFireRank2 = 15262,
	HolyFireRank3 = 15263,
	HolyFireRank4 = 15264,
	HolyFireRank5 = 15265,
	HolyFireRank6 = 15266,
	HolyFireRank7 = 15267,
	HolyFireRank8 = 15261,
	HolyNovaRank1 = 15237,
	HolyNovaRank2 = 15430,
	HolyNovaRank3 = 15431,
	HolyNovaRank4 = 27799,
	HolyNovaRank5 = 27800,
	HolyNovaRank6 = 27801,
	LesserHealRank1 = 2050,
	LesserHealRank2 = 2052,
	LesserHealRank3 = 2053,
	LightwellRank1 = 724,
	LightwellRank2 = 27870,
	LightwellRank3 = 27871,
	PrayerofHealingRank1 = 596,
	PrayerofHealingRank2 = 996,
	PrayerofHealingRank3 = 10960,
	PrayerofHealingRank4 = 10961,
	PrayerofHealingRank5 = 25316,
	RenewRank1 = 139,
	RenewRank2 = 6074,
	RenewRank3 = 6075,
	RenewRank4 = 6076,
	RenewRank5 = 6077,
	RenewRank6 = 6078,
	RenewRank7 = 10927,
	RenewRank8 = 10928,
	RenewRank9 = 10929,
	RenewRank10 = 25315,
	ResurrectionRank1 = 2006,
	ResurrectionRank2 = 2010,
	ResurrectionRank3 = 10880,
	ResurrectionRank4 = 10881,
	ResurrectionRank5 = 20770,
	SmiteRank1 = 585,
	SmiteRank2 = 591,
	SmiteRank3 = 598,
	SmiteRank4 = 984,
	SmiteRank5 = 1004,
	SmiteRank6 = 6060,
	SmiteRank7 = 10933,
	SmiteRank8 = 10934,
--Shadow
	DevouringPlagueRank1 = 2944, --Undead exclusive
	DevouringPlagueRank2 = 19276,
	DevouringPlagueRank3 = 19277,
	DevouringPlagueRank4 = 19278,
	DevouringPlagueRank5 = 19279,
	DevouringPlagueRank6 = 19280,
	FadeRank1 = 586,
	FadeRank2 = 9578,
	FadeRank3 = 9579,
	FadeRank4 = 9592,
	FadeRank5 = 10941,
	FadeRank6 = 10942,
	HexofWeaknessRank1 = 9035, --Troll exclusive
	HexofWeaknessRank2 = 19281,
	HexofWeaknessRank3 = 19282,
	HexofWeaknessRank4 = 19283,
	HexofWeaknessRank5 = 19284,
	HexofWeaknessRank6 = 19285,
	MindBlastRank1 = 8092,
	MindBlastRank2 = 8102,
	MindBlastRank3 = 8103,
	MindBlastRank4 = 8104,
	MindBlastRank5 = 8105,
	MindBlastRank6 = 8106,
	MindBlastRank7 = 10945,
	MindBlastRank8 = 10946,
	MindBlastRank9 = 10947,
	MindControlRank1 = 605,
	MindControlRank2 = 10911,
	MindControlRank3 = 10912,
	MindFlayRank1 = 15407,
	MindFlayRank2 = 17311,
	MindFlayRank3 = 17312,
	MindFlayRank4 = 17313,
	MindFlayRank5 = 17314,
	MindFlayRank6 = 18807,
	MindSootheRank1 = 453,
	MindSootheRank2 = 8192,
	MindSootheRank3 = 10953,
	MindVisionRank1 = 2096,
	MindVisionRank2 = 10909,
	PsychicScreamRank1 = 8122,
	PsychicScreamRank2 = 8124,
	PsychicScreamRank3 = 10888,
	PsychicScreamRank4 = 10890,
	ShadowProtectionRank1 = 976,
	ShadowProtectionRank2 = 10957,
	ShadowProtectionRank3 = 10958,
	ShadowWordPainRank1 = 589,
	ShadowWordPainRank2 = 594,
	ShadowWordPainRank3 = 970,
	ShadowWordPainRank4 = 992,
	ShadowWordPainRank5 = 2767,
	ShadowWordPainRank6 = 10892,
	ShadowWordPainRank7 = 10893,
	ShadowWordPainRank8 = 10894,
	ShadowguardRank1 = 18137, --Troll exclusive
	ShadowguardRank2 = 19308,
	ShadowguardRank3 = 19309,
	ShadowguardRank4 = 19310,
	ShadowguardRank5 = 19311,
	ShadowguardRank6 = 19312,
	TouchofWeaknessRank1 = 2652,
	TouchofWeaknessRank2 = 19261,
	TouchofWeaknessRank3 = 19262,
	TouchofWeaknessRank4 = 19264,
	TouchofWeaknessRank5 = 19265,
	TouchofWeaknessRank6 = 19266,
	
	ShadowWeavingRank1 = 15257,
	ShadowWeavingRank2 = 15331,
	ShadowWeavingRank3 = 15332,
	ShadowWeavingRank4 = 15333,
	ShadowWeavingRank5 = 15334,
}
ids.Discipline_Talent = { 
	Martyrdom =  1, 
	PowerInfusion =  2, 
	MentalAgility =  3, 
	UnbreakableWill =  4, 
	ImprovedPowerWordShield =  5, 
	ImprovedPowerWordFortitude =  6, 
	WandSpecialization =  7, 
	ImprovedInnerFire =  8, 
	Meditation =  9, 
	InnerFocus =  10, 
	ImprovedManaBurn =  11, 
	DivineSpirit =  12, 
	SilentResolve =  13, 
	MentalStrength =  14, 
	ForceofWill =  15, 
}
ids.Holy_Talent = { 
	Inspiration =  1, 
	HolySpecialization =  2, 
	SpiritualGuidance =  3, 
	SearingLight =  4, 
	SpiritualHealing =  5, 
	ImprovedRenew =  6, 
	ImprovedHealing =  7, 
	HealingFocus =  8, 
	SpellWarding =  9, 
	ImprovedPrayerofHealing =  10, 
	HolyNova =  11, 
	DivineFury =  12, 
	SpiritofRedemption =  13, 
	HolyReach =  14, 
	BlessedRecovery =  15, 
	Lightwell =  16, 
}
ids.Shadow_Talent = { 
	ShadowWeaving =  1, 
	Darkness =  2, 
	ShadowFocus =  3, 
	Blackout =  4, 
	SpiritTap =  5, 
	ShadowAffinity =  6, 
	ImprovedMindBlast =  7, 
	ImprovedShadowWordPain =  8, 
	ImprovedFade =  9, 
	VampiricEmbrace =  10, 
	MindFlay =  11, 
	Shadowform =  12, 
	Silence =  13, 
	ImprovedPsychicScream =  14, 
	ShadowReach =  15, 
	ImprovedVampiricEmbrace =  16, 
}
ids.Runes = {
	VoidPlague = 425204, --adds debuff
	TwistedFaith = 425198, --passive
	ShadowWordDeath = 401955, --adds debuff
	MindSear = 413259,
	Penance = 402174,
	Homunculi = 402799,
	SharedPain = 401969, --passive
	PowerWordBarrier = 425207,
	MindSpike = 431655, --Phase 2 - buff stacks up to 3 times
	Dispersion = 425294, --Phase 2 - buff
}
-- Auras
ids.Buff = {
	HymnofHope = 64904,
	VampiricEmbrace = 15286,
	ShadowWeaving = 15257,
}
ids.Debuff = {
	WeakendSoul = 6788,
}

function ConROC:UpdateSpellID()
--Ranks
	--Disc
	if IsSpellKnown(ids.Rank.DispelMagicRank2) then ids.Ability.DispelMagic = ids.Rank.DispelMagicRank2; end

	if IsSpellKnown(ids.Rank.DivineSpiritRank4) then ids.Ability.DivineSpirit = ids.Rank.DivineSpiritRank4;
	elseif IsSpellKnown(ids.Rank.DivineSpiritRank3) then ids.Ability.DivineSpirit = ids.Rank.DivineSpiritRank3;
	elseif IsSpellKnown(ids.Rank.DivineSpiritRank2) then ids.Ability.DivineSpirit = ids.Rank.DivineSpiritRank2; end

	if IsSpellKnown(ids.Rank.InnerFireRank6) then ids.Ability.InnerFire = ids.Rank.InnerFireRank6;
	elseif IsSpellKnown(ids.Rank.InnerFireRank5) then ids.Ability.InnerFire = ids.Rank.InnerFireRank5;
	elseif IsSpellKnown(ids.Rank.InnerFireRank4) then ids.Ability.InnerFire = ids.Rank.InnerFireRank4;
	elseif IsSpellKnown(ids.Rank.InnerFireRank3) then ids.Ability.InnerFire = ids.Rank.InnerFireRank3;
	elseif IsSpellKnown(ids.Rank.InnerFireRank2) then ids.Ability.InnerFire = ids.Rank.InnerFireRank2; end

	if IsSpellKnown(ids.Rank.ManaBurnRank5) then ids.Ability.ManaBurn = ids.Rank.ManaBurnRank5;
	elseif IsSpellKnown(ids.Rank.ManaBurnRank4) then ids.Ability.ManaBurn = ids.Rank.ManaBurnRank4;
	elseif IsSpellKnown(ids.Rank.ManaBurnRank3) then ids.Ability.ManaBurn = ids.Rank.ManaBurnRank3;
	elseif IsSpellKnown(ids.Rank.ManaBurnRank2) then ids.Ability.ManaBurn = ids.Rank.ManaBurnRank2; end

	if IsSpellKnown(ids.Rank.PowerWordFortitudeRank6) then ids.Ability.PowerWordFortitude = ids.Rank.PowerWordFortitudeRank6;
	elseif IsSpellKnown(ids.Rank.PowerWordFortitudeRank5) then ids.Ability.PowerWordFortitude = ids.Rank.PowerWordFortitudeRank5;
	elseif IsSpellKnown(ids.Rank.PowerWordFortitudeRank4) then ids.Ability.PowerWordFortitude = ids.Rank.PowerWordFortitudeRank4;
	elseif IsSpellKnown(ids.Rank.PowerWordFortitudeRank3) then ids.Ability.PowerWordFortitude = ids.Rank.PowerWordFortitudeRank3;
	elseif IsSpellKnown(ids.Rank.PowerWordFortitudeRank2) then ids.Ability.PowerWordFortitude = ids.Rank.PowerWordFortitudeRank2; end

	if IsSpellKnown(ids.Rank.PowerWordShieldRank10) then ids.Ability.PowerWordShield = ids.Rank.PowerWordShieldRank10;
	elseif IsSpellKnown(ids.Rank.PowerWordShieldRank9) then ids.Ability.PowerWordShield = ids.Rank.PowerWordShieldRank9;
	elseif IsSpellKnown(ids.Rank.PowerWordShieldRank8) then ids.Ability.PowerWordShield = ids.Rank.PowerWordShieldRank8;
	elseif IsSpellKnown(ids.Rank.PowerWordShieldRank7) then ids.Ability.PowerWordShield = ids.Rank.PowerWordShieldRank7;
	elseif IsSpellKnown(ids.Rank.PowerWordShieldRank6) then ids.Ability.PowerWordShield = ids.Rank.PowerWordShieldRank6;
	elseif IsSpellKnown(ids.Rank.PowerWordShieldRank5) then ids.Ability.PowerWordShield = ids.Rank.PowerWordShieldRank5;
	elseif IsSpellKnown(ids.Rank.PowerWordShieldRank4) then ids.Ability.PowerWordShield = ids.Rank.PowerWordShieldRank4;
	elseif IsSpellKnown(ids.Rank.PowerWordShieldRank3) then ids.Ability.PowerWordShield = ids.Rank.PowerWordShieldRank3;
	elseif IsSpellKnown(ids.Rank.PowerWordShieldRank2) then ids.Ability.PowerWordShield = ids.Rank.PowerWordShieldRank2; end

	if IsSpellKnown(ids.Rank.PrayerofFortitudeRank2) then ids.Ability.PrayerofFortitude = ids.Rank.PrayerofFortitudeRank2; end

	if IsSpellKnown(ids.Rank.ShackleUndeadRank3) then ids.Ability.ShackleUndead = ids.Rank.ShackleUndeadRank3;
	elseif IsSpellKnown(ids.Rank.ShackleUndeadRank2) then ids.Ability.ShackleUndead = ids.Rank.ShackleUndeadRank2; end

	--Night elf exclusive
	if IsSpellKnown(ids.Rank.ElunesGraceRank5) then ids.Ability.ElunesGrace = ids.Rank.ElunesGraceRank5;
	elseif IsSpellKnown(ids.Rank.ElunesGraceRank4) then ids.Ability.ElunesGrace = ids.Rank.ElunesGraceRank4;
	elseif IsSpellKnown(ids.Rank.ElunesGraceRank3) then ids.Ability.ElunesGrace = ids.Rank.ElunesGraceRank3;
	elseif IsSpellKnown(ids.Rank.ElunesGraceRank2) then ids.Ability.ElunesGrace = ids.Rank.ElunesGraceRank2; end

	--Human exclusive
	if IsSpellKnown(ids.Rank.FeedbackRank5) then ids.Ability.Feedback = ids.Rank.FeedbackRank5;
	elseif IsSpellKnown(ids.Rank.FeedbackRank4) then ids.Ability.Feedback = ids.Rank.FeedbackRank4;
	elseif IsSpellKnown(ids.Rank.FeedbackRank3) then ids.Ability.Feedback = ids.Rank.FeedbackRank3;
	elseif IsSpellKnown(ids.Rank.FeedbackRank2) then ids.Ability.Feedback = ids.Rank.FeedbackRank2; end

	--Night elf exclusive
	if IsSpellKnown(ids.Rank.StarshardsRank7) then ids.Ability.Starshards = ids.Rank.StarshardsRank7;
	elseif IsSpellKnown(ids.Rank.StarshardsRank6) then ids.Ability.Starshards = ids.Rank.StarshardsRank6;
	elseif IsSpellKnown(ids.Rank.StarshardsRank5) then ids.Ability.Starshards = ids.Rank.StarshardsRank5;
	elseif IsSpellKnown(ids.Rank.StarshardsRank4) then ids.Ability.Starshards = ids.Rank.StarshardsRank4;
	elseif IsSpellKnown(ids.Rank.StarshardsRank3) then ids.Ability.Starshards = ids.Rank.StarshardsRank3;
	elseif IsSpellKnown(ids.Rank.StarshardsRank2) then ids.Ability.Starshards = ids.Rank.StarshardsRank2; end

--Holy
	if IsSpellKnown(ids.Rank.FlashHealRank7) then ids.Ability.FlashHeal = ids.Rank.FlashHealRank7;
	elseif IsSpellKnown(ids.Rank.FlashHealRank6) then ids.Ability.FlashHeal = ids.Rank.FlashHealRank6;
	elseif IsSpellKnown(ids.Rank.FlashHealRank5) then ids.Ability.FlashHeal = ids.Rank.FlashHealRank5;
	elseif IsSpellKnown(ids.Rank.FlashHealRank4) then ids.Ability.FlashHeal = ids.Rank.FlashHealRank4;
	elseif IsSpellKnown(ids.Rank.FlashHealRank3) then ids.Ability.FlashHeal = ids.Rank.FlashHealRank3;	
	elseif IsSpellKnown(ids.Rank.FlashHealRank2) then ids.Ability.FlashHeal = ids.Rank.FlashHealRank2; end

	if IsSpellKnown(ids.Rank.GreaterHealRank5) then ids.Ability.GreaterHeal = ids.Rank.GreaterHealRank5;
	elseif IsSpellKnown(ids.Rank.GreaterHealRank4) then ids.Ability.GreaterHeal = ids.Rank.GreaterHealRank4;
	elseif IsSpellKnown(ids.Rank.GreaterHealRank3) then ids.Ability.GreaterHeal = ids.Rank.GreaterHealRank3;
	elseif IsSpellKnown(ids.Rank.GreaterHealRank2) then ids.Ability.GreaterHeal = ids.Rank.GreaterHealRank2; end

	if IsSpellKnown(ids.Rank.HealRank4) then ids.Ability.Heal = ids.Rank.HealRank4;
	elseif IsSpellKnown(ids.Rank.HealRank3) then ids.Ability.Heal = ids.Rank.HealRank3;	
	elseif IsSpellKnown(ids.Rank.HealRank2) then ids.Ability.Heal = ids.Rank.HealRank2; end

	if IsSpellKnown(ids.Rank.LesserHealRank3) then ids.Ability.LesserHeal = ids.Rank.LesserHealRank3;	
	elseif IsSpellKnown(ids.Rank.LesserHealRank2) then ids.Ability.LesserHeal = ids.Rank.LesserHealRank2; end

	if IsSpellKnown(ids.Rank.HolyFireRank8) then ids.Ability.HolyFire = ids.Rank.HolyFireRank8;
	elseif IsSpellKnown(ids.Rank.HolyFireRank7) then ids.Ability.HolyFire = ids.Rank.HolyFireRank7;
	elseif IsSpellKnown(ids.Rank.HolyFireRank6) then ids.Ability.HolyFire = ids.Rank.HolyFireRank6;
	elseif IsSpellKnown(ids.Rank.HolyFireRank5) then ids.Ability.HolyFire = ids.Rank.HolyFireRank5;
	elseif IsSpellKnown(ids.Rank.HolyFireRank4) then ids.Ability.HolyFire = ids.Rank.HolyFireRank4;
	elseif IsSpellKnown(ids.Rank.HolyFireRank3) then ids.Ability.HolyFire = ids.Rank.HolyFireRank3;
	elseif IsSpellKnown(ids.Rank.HolyFireRank2) then ids.Ability.HolyFire = ids.Rank.HolyFireRank2; end

	if IsSpellKnown(ids.Rank.HolyNovaRank6) then ids.Ability.HolyNova = ids.Rank.HolyNovaRank6;
	elseif IsSpellKnown(ids.Rank.HolyNovaRank5) then ids.Ability.HolyNova = ids.Rank.HolyNovaRank5;
	elseif IsSpellKnown(ids.Rank.HolyNovaRank4) then ids.Ability.HolyNova = ids.Rank.HolyNovaRank4;
	elseif IsSpellKnown(ids.Rank.HolyNovaRank3) then ids.Ability.HolyNova = ids.Rank.HolyNovaRank3;
	elseif IsSpellKnown(ids.Rank.HolyNovaRank2) then ids.Ability.HolyNova = ids.Rank.HolyNovaRank2; end

	if IsSpellKnown(ids.Rank.LightwellRank3) then ids.Ability.Lightwell = ids.Rank.LightwellRank3;	
	elseif IsSpellKnown(ids.Rank.LightwellRank2) then ids.Ability.Lightwell = ids.Rank.LightwellRank2; end

	if IsSpellKnown(ids.Rank.PrayerofHealingRank5) then ids.Ability.PrayerofHealing = ids.Rank.PrayerofHealingRank5;
	elseif IsSpellKnown(ids.Rank.PrayerofHealingRank4) then ids.Ability.PrayerofHealing = ids.Rank.PrayerofHealingRank4;
	elseif IsSpellKnown(ids.Rank.PrayerofHealingRank3) then ids.Ability.PrayerofHealing = ids.Rank.PrayerofHealingRank3;
	elseif IsSpellKnown(ids.Rank.PrayerofHealingRank2) then ids.Ability.PrayerofHealing = ids.Rank.PrayerofHealingRank2; end

	if IsSpellKnown(ids.Rank.RenewRank10) then ids.Ability.Renew = ids.Rank.RenewRank10;
	elseif IsSpellKnown(ids.Rank.RenewRank9) then ids.Ability.Renew = ids.Rank.RenewRank9;
	elseif IsSpellKnown(ids.Rank.RenewRank8) then ids.Ability.Renew = ids.Rank.RenewRank8;
	elseif IsSpellKnown(ids.Rank.RenewRank7) then ids.Ability.Renew = ids.Rank.RenewRank7;
	elseif IsSpellKnown(ids.Rank.RenewRank6) then ids.Ability.Renew = ids.Rank.RenewRank6;
	elseif IsSpellKnown(ids.Rank.RenewRank5) then ids.Ability.Renew = ids.Rank.RenewRank5;
	elseif IsSpellKnown(ids.Rank.RenewRank4) then ids.Ability.Renew = ids.Rank.RenewRank4;
	elseif IsSpellKnown(ids.Rank.RenewRank3) then ids.Ability.Renew = ids.Rank.RenewRank3;
	elseif IsSpellKnown(ids.Rank.RenewRank2) then ids.Ability.Renew = ids.Rank.RenewRank2; end

	if IsSpellKnown(ids.Rank.ResurrectionRank5) then ids.Ability.Resurrection = ids.Rank.ResurrectionRank5;
	elseif IsSpellKnown(ids.Rank.ResurrectionRank4) then ids.Ability.Resurrection = ids.Rank.ResurrectionRank4;
	elseif IsSpellKnown(ids.Rank.ResurrectionRank3) then ids.Ability.Resurrection = ids.Rank.ResurrectionRank3;
	elseif IsSpellKnown(ids.Rank.ResurrectionRank2) then ids.Ability.Resurrection = ids.Rank.ResurrectionRank2; end

	if IsSpellKnown(ids.Rank.SmiteRank8) then ids.Ability.Smite = ids.Rank.SmiteRank8;
	elseif IsSpellKnown(ids.Rank.SmiteRank7) then ids.Ability.Smite = ids.Rank.SmiteRank7;
	elseif IsSpellKnown(ids.Rank.SmiteRank6) then ids.Ability.Smite = ids.Rank.SmiteRank6;
	elseif IsSpellKnown(ids.Rank.SmiteRank5) then ids.Ability.Smite = ids.Rank.SmiteRank5;
	elseif IsSpellKnown(ids.Rank.SmiteRank4) then ids.Ability.Smite = ids.Rank.SmiteRank4;
	elseif IsSpellKnown(ids.Rank.SmiteRank3) then ids.Ability.Smite = ids.Rank.SmiteRank3;
	elseif IsSpellKnown(ids.Rank.SmiteRank2) then ids.Ability.Smite = ids.Rank.SmiteRank2; end
--Shadow
	--Undead exclusive
	if IsSpellKnown(ids.Rank.DevouringPlagueRank6) then ids.Ability.DevouringPlague = ids.Rank.DevouringPlagueRank6;
	elseif IsSpellKnown(ids.Rank.DevouringPlagueRank5) then ids.Ability.DevouringPlague = ids.Rank.DevouringPlagueRank5;
	elseif IsSpellKnown(ids.Rank.DevouringPlagueRank4) then ids.Ability.DevouringPlague = ids.Rank.DevouringPlagueRank4;
	elseif IsSpellKnown(ids.Rank.DevouringPlagueRank3) then ids.Ability.DevouringPlague = ids.Rank.DevouringPlagueRank3;
	elseif IsSpellKnown(ids.Rank.DevouringPlagueRank2) then ids.Ability.DevouringPlague = ids.Rank.DevouringPlagueRank2; end

	if IsSpellKnown(ids.Rank.FadeRank6) then ids.Ability.Fade = ids.Rank.FadeRank6;
	elseif IsSpellKnown(ids.Rank.FadeRank5) then ids.Ability.Fade = ids.Rank.FadeRank5;
	elseif IsSpellKnown(ids.Rank.FadeRank4) then ids.Ability.Fade = ids.Rank.FadeRank4;
	elseif IsSpellKnown(ids.Rank.FadeRank3) then ids.Ability.Fade = ids.Rank.FadeRank3;
	elseif IsSpellKnown(ids.Rank.FadeRank2) then ids.Ability.Fade = ids.Rank.FadeRank2; end

	--Troll exclusive
	if IsSpellKnown(ids.Rank.HexofWeaknessRank6) then ids.Ability.HexofWeakness = ids.Rank.HexofWeaknessRank6;
	elseif IsSpellKnown(ids.Rank.HexofWeaknessRank5) then ids.Ability.HexofWeakness = ids.Rank.HexofWeaknessRank5;
	elseif IsSpellKnown(ids.Rank.HexofWeaknessRank4) then ids.Ability.HexofWeakness = ids.Rank.HexofWeaknessRank4;
	elseif IsSpellKnown(ids.Rank.HexofWeaknessRank3) then ids.Ability.HexofWeakness = ids.Rank.HexofWeaknessRank3;
	elseif IsSpellKnown(ids.Rank.HexofWeaknessRank2) then ids.Ability.HexofWeakness = ids.Rank.HexofWeaknessRank2; end

	if IsSpellKnown(ids.Rank.MindBlastRank9) then ids.Ability.MindBlast = ids.Rank.MindBlastRank9;
	elseif IsSpellKnown(ids.Rank.MindBlastRank8) then ids.Ability.MindBlast = ids.Rank.MindBlastRank8;
	elseif IsSpellKnown(ids.Rank.MindBlastRank7) then ids.Ability.MindBlast = ids.Rank.MindBlastRank7;
	elseif IsSpellKnown(ids.Rank.MindBlastRank6) then ids.Ability.MindBlast = ids.Rank.MindBlastRank6;
	elseif IsSpellKnown(ids.Rank.MindBlastRank5) then ids.Ability.MindBlast = ids.Rank.MindBlastRank5;
	elseif IsSpellKnown(ids.Rank.MindBlastRank4) then ids.Ability.MindBlast = ids.Rank.MindBlastRank4;
	elseif IsSpellKnown(ids.Rank.MindBlastRank3) then ids.Ability.MindBlast = ids.Rank.MindBlastRank3;
	elseif IsSpellKnown(ids.Rank.MindBlastRank2) then ids.Ability.MindBlast = ids.Rank.MindBlastRank2; end

	if IsSpellKnown(ids.Rank.MindControlRank3) then ids.Ability.MindControl = ids.Rank.MindControlRank3;
	elseif IsSpellKnown(ids.Rank.MindControlRank2) then ids.Ability.MindControl = ids.Rank.MindControlRank2; end

	if IsSpellKnown(ids.Rank.MindFlayRank6) then ids.Ability.MindFlay = ids.Rank.MindFlayRank6;
	elseif IsSpellKnown(ids.Rank.MindFlayRank5) then ids.Ability.MindFlay = ids.Rank.MindFlayRank5;
	elseif IsSpellKnown(ids.Rank.MindFlayRank4) then ids.Ability.MindFlay = ids.Rank.MindFlayRank4;
	elseif IsSpellKnown(ids.Rank.MindFlayRank3) then ids.Ability.MindFlay = ids.Rank.MindFlayRank3;
	elseif IsSpellKnown(ids.Rank.MindFlayRank2) then ids.Ability.MindFlay = ids.Rank.MindFlayRank2; end

	if IsSpellKnown(ids.Rank.MindSootheRank3) then ids.Ability.MindSoothe = ids.Rank.MindSootheRank3;
	elseif IsSpellKnown(ids.Rank.MindSootheRank2) then ids.Ability.MindSoothe = ids.Rank.MindSootheRank2; end

	if IsSpellKnown(ids.Rank.MindVisionRank2) then ids.Ability.MindVision = ids.Rank.MindVisionRank2; end

	if IsSpellKnown(ids.Rank.PsychicScreamRank4) then ids.Ability.PsychicScream  = ids.Rank.PsychicScreamRank4;
	elseif IsSpellKnown(ids.Rank.PsychicScreamRank3) then ids.Ability.PsychicScream  = ids.Rank.PsychicScreamRank3;
	elseif IsSpellKnown(ids.Rank.PsychicScreamRank2) then ids.Ability.PsychicScream  = ids.Rank.PsychicScreamRank2; end

	if IsSpellKnown(ids.Rank.ShadowProtectionRank3) then ids.Ability.ShadowProtection = ids.Rank.ShadowProtectionRank3;
	elseif IsSpellKnown(ids.Rank.ShadowProtectionRank2) then ids.Ability.ShadowProtection = ids.Rank.ShadowProtectionRank2; end

	if IsSpellKnown(ids.Rank.ShadowWordPainRank8) then ids.Ability.ShadowWordPain = ids.Rank.ShadowWordPainRank8;
	elseif IsSpellKnown(ids.Rank.ShadowWordPainRank7) then ids.Ability.ShadowWordPain = ids.Rank.ShadowWordPainRank7;
	elseif IsSpellKnown(ids.Rank.ShadowWordPainRank6) then ids.Ability.ShadowWordPain = ids.Rank.ShadowWordPainRank6;
	elseif IsSpellKnown(ids.Rank.ShadowWordPainRank5) then ids.Ability.ShadowWordPain = ids.Rank.ShadowWordPainRank5;
	elseif IsSpellKnown(ids.Rank.ShadowWordPainRank4) then ids.Ability.ShadowWordPain = ids.Rank.ShadowWordPainRank4;
	elseif IsSpellKnown(ids.Rank.ShadowWordPainRank3) then ids.Ability.ShadowWordPain = ids.Rank.ShadowWordPainRank3;
	elseif IsSpellKnown(ids.Rank.ShadowWordPainRank2) then ids.Ability.ShadowWordPain = ids.Rank.ShadowWordPainRank2; end

	--Troll exclusive
	if IsSpellKnown(ids.Rank.ShadowguardRank6) then ids.Ability.Shadowguard = ids.Rank.ShadowguardRank6;
	elseif IsSpellKnown(ids.Rank.ShadowguardRank5) then ids.Ability.Shadowguard = ids.Rank.ShadowguardRank5;
	elseif IsSpellKnown(ids.Rank.ShadowguardRank4) then ids.Ability.Shadowguard = ids.Rank.ShadowguardRank4;
	elseif IsSpellKnown(ids.Rank.ShadowguardRank3) then ids.Ability.Shadowguard = ids.Rank.ShadowguardRank3;
	elseif IsSpellKnown(ids.Rank.ShadowguardRank2) then ids.Ability.Shadowguard = ids.Rank.ShadowguardRank2; end

	if IsSpellKnown(ids.Rank.TouchofWeaknessRank6) then ids.Ability.TouchofWeakness = ids.Rank.TouchofWeaknessRank6;
	elseif IsSpellKnown(ids.Rank.TouchofWeaknessRank5) then ids.Ability.TouchofWeakness = ids.Rank.TouchofWeaknessRank5;
	elseif IsSpellKnown(ids.Rank.TouchofWeaknessRank4) then ids.Ability.TouchofWeakness = ids.Rank.TouchofWeaknessRank4;
	elseif IsSpellKnown(ids.Rank.TouchofWeaknessRank3) then ids.Ability.TouchofWeakness = ids.Rank.TouchofWeaknessRank3;
	elseif IsSpellKnown(ids.Rank.TouchofWeaknessRank2) then ids.Ability.TouchofWeakness = ids.Rank.TouchofWeaknessRank2; end

	local _, _ShadowWeavingRank = ConROC:TalentChosen(Spec.Shadow, Shadow_Talent.ShadowWeaving)
	if _ShadowWeavingRank == 5 then ids.Buff.ShadowWeaving = ids.Rank.ShadowWeavingRank5;
	elseif ShadowWeavingRank == 4 then ids.Buff.ShadowWeaving = ids.Rank.ShadowWeavingRank4;
	elseif ShadowWeavingRank == 3 then ids.Buff.ShadowWeaving = ids.Rank.ShadowWeavingRank3;
	elseif ShadowWeavingRank == 2 then ids.Buff.ShadowWeaving = ids.Rank.ShadowWeavingRank2; end
end