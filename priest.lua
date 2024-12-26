ConROC.Priest = {};

local ConROC_Priest, ids = ...;

function ConROC:EnableRotationModule()
	self.Description = "Priest";
	self.NextSpell = ConROC.Priest.Damage;

	self:RegisterEvent('UNIT_SPELLCAST_SUCCEEDED');
	self.lastSpellId = 0;

	ConROC:SpellmenuClass();
end

function ConROC:EnableDefenseModule()
	self.NextDef = ConROC.Priest.Defense;
end

function ConROC:UNIT_SPELLCAST_SUCCEEDED(event, unitID, lineID, spellID)
	if unitID == 'player' then
		self.lastSpellId = spellID;
	end
end

local Racial, Spec, Caster, Ability, Rank, Disc_Talent, Holy_Talent, Shad_Talent, Engrave, Runes, Buff, Debuff = ids.Racial, ids.Spec, ids.Caster, ids.Ability, ids.Rank, ids.Discipline_Talent, ids.Holy_Talent, ids.Shadow_Talent, ids.Engrave, ids.Runes, ids.Buff, ids.Debuff;

--Info
local _Player_Spec, _Player_Spec_ID = ConROC:currentSpec();
local _Player_Level = UnitLevel("player");
local _Player_Percent_Health = ConROC:PercentHealth('player');
local _is_PvP = ConROC:IsPvP();
local _in_combat = UnitAffectingCombat('player');
local _party_size = GetNumGroupMembers();
local _is_PC = UnitPlayerControlled("target");
local _is_Enemy = ConROC:TarHostile();
local _Target_Health = UnitHealth('target');
local _Target_Percent_Health = ConROC:PercentHealth('target');

--Resources
local _Mana, _Mana_Max, _Mana_Percent = ConROC:PlayerPower('Mana');

--Conditions
local _Queue = 0;
local _is_moving = ConROC:PlayerSpeed();
local _enemies_in_melee, _target_in_melee = ConROC:Targets("Melee");
local _enemies_in_10yrds, _target_in_10yrds = ConROC:Targets("10");
local _enemies_in_20yrds, _target_in_20yrds = ConROC:Targets("20");
local _enemies_in_40yrds, _target_in_40yrds = ConROC:Targets("40");
local _can_Execute = _Target_Percent_Health < 20;

--Racials
local _Berserking, _Berserking_RDY = _, _;

function ConROC:Stats()
	_Player_Spec, _Player_Spec_ID = ConROC:currentSpec();
	_Player_Level = UnitLevel("player");
	_Player_Percent_Health = ConROC:PercentHealth('player');
	_is_PvP = ConROC:IsPvP();
	_in_combat = UnitAffectingCombat('player');
	_party_size = GetNumGroupMembers();
	_is_PC = UnitPlayerControlled("target");
	_is_Enemy = ConROC:TarHostile();
	_Target_Health = UnitHealth('target');
	_Target_Percent_Health = ConROC:PercentHealth('target');

	_Mana, _Mana_Max, _Mana_Percent = ConROC:PlayerPower('Mana');

	_Queue = 0;
	_is_moving = ConROC:PlayerSpeed();
	_enemies_in_melee, _target_in_melee = ConROC:Targets("Melee");
	_enemies_in_10yrds, _target_in_10yrds = ConROC:Targets("10");
	_enemies_in_20yrds, _target_in_20yrds = ConROC:Targets("20");
	_enemies_in_40yrds, _target_in_40yrds = ConROC:Targets("40");
	_can_Execute = _Target_Percent_Health < 20;

	_Berserking, _Berserking_RDY = ConROC:AbilityReady(Racial.Berserking, timeShift);
end

function ConROC.Priest.Damage(_, timeShift, currentSpell, gcd)
	ConROC:UpdateSpellID()
	ConROC:Stats();

--Abilities		
	local _DivineSpirit, _DivineSpirit_RDY = ConROC:AbilityReady(Ability.DivineSpirit, timeShift);
		local _DivineSpirit_BUFF = ConROC:Aura(_DivineSpirit, timeShift);
	local _InnerFocus, _InnerFocus_RDY = ConROC:AbilityReady(Ability.InnerFocus, timeShift);
	local _ManaBurn, _ManaBurn_RDY = ConROC:AbilityReady(Ability.ManaBurn, timeShift);
	local _PowerInfusion, _PowerInfusion_RDY = ConROC:AbilityReady(Ability.PowerInfusion, timeShift);
	local _PrayerofSpirit, _PrayerofSpirit_RDY = ConROC:AbilityReady(Ability.PrayerofSpirit, timeShift);
	local _PowerWordFortitude, _PowerWordFortitude_RDY = ConROC:AbilityReady(Ability.PowerWordFortitude, timeShift);
		local _PowerWordFortitude_BUFF = ConROC:Aura(_PowerWordFortitude, timeShift);

	local _HolyFire, _HolyFire_RDY = ConROC:AbilityReady(Ability.HolyFire, timeShift);
		local _HolyFire_DEBUFF = ConROC:TargetAura(_HolyFire, timeShift);
	local _Smite, _Smite_RDY = ConROC:AbilityReady(Ability.Smite, timeShift);

	local _HexofWeakness, _HexofWeakness_RDY = ConROC:AbilityReady(Ability.HexofWeakness, timeShift);
		local _HexofWeakness_DEBUFF = ConROC:TargetAura(_HexofWeakness, timeShift);
	local _MindBlast, _MindBlast_RDY = ConROC:AbilityReady(Ability.MindBlast, timeShift);
	local _DevouringPlague, _DevouringPlague_RDY = ConROC:AbilityReady(Ability.DevouringPlague, timeShift);
		local _DevouringPlague_DEBUFF	= ConROC:TargetAura(_DevouringPlague, timeShift);
	local _MindControl, _MindControl_RDY = ConROC:AbilityReady(Ability.MindControl, timeShift);
	local _MindFlay, _MindFlay_RDY = ConROC:AbilityReady(Ability.MindFlay, timeShift);
	local _ShadowWordPain, _ShadowWordPain_RDY = ConROC:AbilityReady(Ability.ShadowWordPain, timeShift);
		local _ShadowWordPain_DEBUFF = ConROC:TargetAura(_ShadowWordPain, timeShift);
	local _Shadowform, _Shadowform_RDY = ConROC:AbilityReady(Ability.Shadowform, timeShift);
		local _Shadowform_FORM = ConROC:Form(_Shadowform);
	local _Silence, _Silence_RDY = ConROC:AbilityReady(Ability.Silence, timeShift);
	local _VampiricEmbrace, _VampiricEmbrace_RDY = ConROC:AbilityReady(Ability.VampiricEmbrace, timeShift);
		local _VampiricEmbrace_DEBUFF = ConROC:TargetAura(_VampiricEmbrace, timeShift);

	local _ShadowWeaving_BUFF, _ShadowWeaving_COUNT = ConROC:Aura(Buff.ShadowWeaving, timeShift);

--Runes
	local _VoidPlague, _VoidPlague_RDY = ConROC:AbilityReady(Runes.VoidPlague, timeShift);
		local _VoidPlague_DEBUFF = ConROC:TargetAura(_VoidPlague, timeShift);
	local _ShadowWordDeath, _ShadowWordDeath_RDY = ConROC:AbilityReady(Runes.ShadowWordDeath, timeShift);
	local _MindSear, _MindSear_RDY = ConROC:AbilityReady(Runes.MindSear, timeShift);
	local _Homunculi, _Homunculi_RDY = ConROC:AbilityReady(Runes.Homunculi, timeShift);
	local _MindSpike, _MindSpike_RDY = ConROC:AbilityReady(Runes.MindSpike, timeShift);
		local _MindSpike_BUFF, _MindSpike_COUNT = ConROC:Aura(_MindSpike, timeShift);
	local _Penance, _Penance_RDY = ConROC:AbilityReady(Runes.Penance, timeShift);

--Conditions
	local _Has_Wand = HasWandEquipped();

--Indicators
	ConROC:AbilityRaidBuffs(_PowerWordFortitude, ConROC:CheckBox(ConROC_SM_Buff_PowerWordFortitude) and _PowerWordFortitude_RDY and not _PowerWordFortitude_BUFF);
	ConROC:AbilityRaidBuffs(_DivineSpirit, ConROC:CheckBox(ConROC_SM_Buff_DivineSpirit) and _DivineSpirit_RDY and not _DivineSpirit_BUFF);

	ConROC:AbilityBurst(_InnerFocus, _InnerFocus_RDY and _MindBlast_RDY and _is_Enemy);

--Warnings	

--Rotations
	--[[
	if _Player_Spec_ID == Spec.Discipline then

	end
	if _Player_Spec_ID == Spec.Holy then

	end
	if _Player_Spec_ID == Spec.Shadow then

	end
	]]
	if ConROC.Seasons.IsSoD then
		if ConROC:CheckBox(ConROC_SM_Role_Caster) or ConROC:CheckBox(ConROC_SM_Role_PvP) then
			if _Shadowform_RDY and not _Shadowform_FORM then
				return _Shadowform;
			end
			if ConROC:CheckBox(ConROC_SM_Spell_Homunculi) and _Homunculi_RDY then
				return _Homunculi
			end
			if _VoidPlague_RDY and not _VoidPlague_DEBUFF then
				return _VoidPlague
			end
			if ConROC:CheckBox(ConROC_SM_Debuff_ShadowWordPain) and _ShadowWordPain_RDY and not _ShadowWordPain_DEBUFF then
				return _ShadowWordPain;
			end
			if _MindBlast_RDY and currentSpell ~= _MindBlast then
				return _MindBlast;
			end
			if ConROC:CheckBox(ConROC_SM_Spell_ShadowWordDeath) and _ShadowWordDeath_RDY and not _Player_Percent_Health < 50 then
				return _ShadowWordDeath;
			end
			if ConROC:CheckBox(ConROC_SM_Debuff_MindFlay) and _MindFlay_RDY then
				return _MindFlay;
			end
			if _in_combat and ConROC:CheckBox(ConROC_SM_Spell_Penance) and _Penance_RDY then
				return _Penance;
			end
			if _Smite_RDY then
				return _Smite;
			end
			if ConROC:CheckBox(ConROC_SM_Option_UseWand) and _Has_Wand and (_Mana_Percent <= 20 or _Target_Percent_Health <= 5) then
				return Caster.Shoot;
			end
		end
	end

	if _Shadowform_RDY and not _Shadowform_FORM then
		return _Shadowform;
	end

	if _Shadowform_FORM then
		if not _in_combat then
			if _MindBlast_RDY and currentSpell ~= _MindBlast then
				return _MindBlast;
			end
		end

		if ConROC:CheckBox(ConROC_SM_Debuff_HexofWeakness) and _HexofWeakness_RDY and not _HexofWeakness_DEBUFF then
			return _HexofWeakness;
		end

		if ConROC:CheckBox(ConROC_SM_Debuff_ShadowWordPain) and _ShadowWordPain_RDY and not _ShadowWordPain_DEBUFF then
			return _ShadowWordPain;
		end

		if ConROC:CheckBox(ConROC_SM_Debuff_VampiricEmbrace) and _VampiricEmbrace_RDY and not _VampiricEmbrace_DEBUFF then
			return _VampiricEmbrace;
		end

		if ConROC:CheckBox(ConROC_SM_Option_UseWand) and _Has_Wand and (_Mana_Percent <= 20 or _Target_Percent_Health <= 5) then
			return Caster.Shoot;
		end

		if _MindBlast_RDY and currentSpell ~= _MindBlast then
			return _MindBlast;
		end

		if ConROC:CheckBox(ConROC_SM_Debuff_MindFlay) and _MindFlay_RDY then
			return _MindFlay;
		end
	end

	if _is_Enemy and not _Shadowform_FORM then
		if not _in_combat then
			if _MindBlast_RDY and currentSpell ~= _MindBlast then
				return _MindBlast;
			elseif ConROC:CheckBox(ConROC_SM_Debuff_HolyFire) and _HolyFire_RDY and not _HolyFire_DEBUFF and currentSpell ~= _HolyFire then
				return _HolyFire;
			elseif _Smite_RDY and currentSpell ~= _Smite then
				return _Smite;
			end
		end

		if ConROC:CheckBox(ConROC_SM_Debuff_HexofWeakness) and _HexofWeakness_RDY and not _HexofWeakness_DEBUFF then
			return _HexofWeakness;
		end

		if ConROC:CheckBox(ConROC_SM_Debuff_ShadowWordPain) and _ShadowWordPain_RDY and not _ShadowWordPain_DEBUFF then
			return _ShadowWordPain;
		end

		if ConROC:CheckBox(ConROC_SM_Debuff_VampiricEmbrace) and _VampiricEmbrace_RDY and not _VampiricEmbrace_DEBUFF then
			return _VampiricEmbrace;
		end

		if ConROC:CheckBox(ConROC_SM_Debuff_HolyFire) and _HolyFire_RDY and not _HolyFire_DEBUFF and currentSpell ~= _HolyFire then
			return _HolyFire;
		end

		if ConROC:CheckBox(ConROC_SM_Option_UseWand) and _Has_Wand and (_Mana_Percent <= 20 or _Target_Percent_Health <= 5) then
			return Caster.Shoot;
		end

		if _MindBlast_RDY and currentSpell ~= _MindBlast then
			return _MindBlast;
		end

		if ConROC:CheckBox(ConROC_SM_Debuff_MindFlay) and _MindFlay_RDY then
			return _MindFlay;
		end

		if _Smite_RDY then
			return _Smite;
		end
	end
return nil;
end

function ConROC.Priest.Defense(_, timeShift, currentSpell, gcd)
	ConROC:UpdateSpellID()
	ConROC:Stats();

--Abilities
	local _DivineSpirit, _DivineSpirit_RDY = ConROC:AbilityReady(Ability.DivineSpirit, timeShift);
		local _DivineSpirit_BUFF = ConROC:Aura(_DivineSpirit, timeShift);
	local _DispelMagic, _DispelMagic_RDY = ConROC:AbilityReady(Ability.DispelMagic, timeShift);
	local _InnerFire, _InnerFire_RDY = ConROC:AbilityReady(Ability.InnerFire, timeShift);
		local _InnerFire_BUFF = ConROC:Aura(_InnerFire, timeShift);
	local _PrayerofSpirit, _PrayerofSpirit_RDY = ConROC:AbilityReady(Ability.PrayerofSpirit, timeShift);
		local _PrayerofSpirit_BUFF = ConROC:Aura(_PrayerofSpirit, timeShift);
	local _PowerWordFortitude, _PowerWordFortitude_RDY = ConROC:AbilityReady(Ability.PowerWordFortitude, timeShift);
		local _PowerWordFortitude_BUFF = ConROC:Aura(_PowerWordFortitude, timeShift);
	local _PrayerofFortitude, _PrayerofFortitude_RDY = ConROC:AbilityReady(Ability.PrayerofFortitude, timeShift);	--new	
		local _PrayerofFortitude_BUFF = ConROC:Aura(_PrayerofFortitude, timeShift);	--new
	local _PowerWordShield, _PowerWordShield_RDY = ConROC:AbilityReady(Ability.PowerWordShield, timeShift);
		local _PowerWordShield_BUFF = ConROC:Aura(_PowerWordShield, timeShift);
		local _WeakendSoul_DEBUFF = ConROC:UnitAura(Debuff.WeakendSoul, timeShift, 'player', 'HARMFUL');

	local _Fade, _Fade_RDY = ConROC:AbilityReady(Ability.Fade, timeShift);
	local _PsychicScream, _PsychicScream_RDY = ConROC:AbilityReady(Ability.PsychicScream, timeShift);
	local _ShadowProtection, _ShadowProtection_RDY = ConROC:AbilityReady(Ability.ShadowProtection, timeShift);
		local _ShadowProtection_BUFF = ConROC:Aura(_ShadowProtection, timeShift);

--Rotations
	if _DivineSpirit_RDY and not (_PrayerofSpirit_BUFF or _DivineSpirit_BUFF) and UnitAffectingCombat("player") then
		return _DivineSpirit;
	end
	if _PrayerofSpirit_RDY and not (_PrayerofSpirit_BUFF or _DivineSpirit_BUFF) and UnitInParty("player") then
		return _PrayerofSpirit;
	end

	if _PowerWordFortitude_RDY and not (_PrayerofFortitude_BUFF or _PowerWordFortitude_BUFF) and UnitAffectingCombat("player") then
		return _PowerWordFortitude;
	end
	if _PrayerofFortitude_RDY and not (_PrayerofFortitude_BUFF or _PowerWordFortitude_BUFF) and UnitInParty("player") then
		return _PrayerofFortitude;
	end

	if _InnerFire_RDY and not _InnerFire_BUFF then
		return _InnerFire;
	end

	if ConROC:CheckBox(ConROC_SM_Buff_ShadowProtection) and _ShadowProtection_RDY and not _ShadowProtection_BUFF then
		return _ShadowProtection;
	end

	if _PowerWordShield_RDY and not _PowerWordShield_BUFF and not _WeakendSoul_DEBUFF then
		return _PowerWordShield;
	end
return nil;
end
