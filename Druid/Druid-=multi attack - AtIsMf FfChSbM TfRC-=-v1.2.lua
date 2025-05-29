--AtIsMf FfChSbM RC--
-=Druid multi-attack=--=Attack+Swarm+Moonfire+Charge+Bite+Maul+Fury+Rake+Claw=-
/script local function melee() if UnitExists('target') then return CheckInteractDistance('target',2) end;end;local function ranged() if UnitExists('target') then return not melee() end;end;local function inCombat() return UnitAffectingCombat('player') end;local function GotBuff(name,target) local tex,cnt for ix = 1,32 do tex,cnt = UnitBuff('player',ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = 'target' end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function action(spell,rank,self) local ix,spellName,spellRank=192 while(ix>0) do if ix==0 then return nil else spellName,spellRank=GetSpellName(ix,"spell") if spellName==spell and (spellRank==rank or rank==nil) then if GetSpellCooldown(ix,"spell")==0 then if self then CastSpellByName(spell.."("..rank..")",self) else CastSpell(ix,'spell') end;return true end;end;ix=ix-1 end;end;end;function Attack_Actions() local mana=UnitMana('player')local OoC=GotBuff('Spell_Shadow_ManaBurn')local RPoH; if UnitExists('target') then RPoH=UnitHealth('target')/UnitHealthMax('target') else RPoH=0; end;local _,_,_,_,TR=GetTalentInfo(2,1);for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName('Attack') C=96 return end;end;if not GotBuff('Ability_Racial_BearForm') and not GotBuff('Ability_Druid_CatForm') then if melee() then if not GotDebuff('Spell_Nature_InsectSwarm') and not OoC and RPoH>0.2 and action('Insect Swarm') then return end;if (not GotDebuff('Spell_Nature_StarFall') or OoC or RPoH<0.2) and action('Moonfire') then return end;end;if ranged() then if (not GotDebuff('Spell_Nature_StarFall') or OoC or RPoH<0.2) and action('Moonfire') then return end;if not GotDebuff('Spell_Nature_InsectSwarm') and not OoC and RPoH>0.2 and action('Insect Swarm') then return end;end;if not GotDebuff('Spell_Nature_FaerieFire') and RPoH>0.4 and action('Faerie Fire') then return end;else if not GotDebuff('Spell_Nature_FaerieFire') then if action('Faerie Fire (Feral)','Rank 4') then return elseif action('Faerie Fire (Feral)','Rank 3') then return elseif action('Faerie Fire (Feral)','Rank 2') then return elseif action('Faerie Fire (Feral)','Rank 1') then return end;end;if GotBuff('Ability_Racial_BearForm') then if ranged() and (mana>=5 or OoC) and action('Feral Charge') then return end;if melee() and (mana>=30-TR or OoC) and action('Savage Bite') then end;if melee() and (mana>=15-TR or OoC) and action('Maul') then end;end;if GotBuff('Ability_Druid_CatForm') then if not GotBuff('Ability_Mount_JungleTiger') and mana>=30 and action("Tiger's Fury") then end;if melee() and not GotDebuff('Ability_Druid_Disembowel') and mana>=40-TR and not OoC and UnitCreatureType('target')~='Elemental' and UnitCreatureType('target')~='Mechanical' and UnitCreatureType('target')~='Uncategorized' and UnitCreatureType('target')~='Undead' and action('Rake') then return end;if melee() and (mana>=45-TR or OoC) and action('Claw') then end;end;end;end;Attack_Actions() 
--
/script 
local function melee() if UnitExists('target') then return CheckInteractDistance('target',2) end;end;
local function ranged() if UnitExists('target') then return not melee() end;end;
local function inCombat() return UnitAffectingCombat('player') end;
local function GotBuff(name,target) 
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitBuff('player',ix) 
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target = 'target' end;
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function action(spell,rank,self) 
	local ix,spellName,spellRank=192 
	while(ix>0) do 
		if ix==0 then return nil 
		else 
			spellName,spellRank=GetSpellName(ix,"spell") 
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if GetSpellCooldown(ix,"spell")==0 then 
					if self then CastSpellByName(spell.."("..rank..")",self) 
					else CastSpell(ix,'spell') end;
					return true 
				end;
			end;
			ix=ix-1 
		end;
	end;
end;
function Attack_Actions() 
	local mana=UnitMana('player')
	local OoC=GotBuff('Spell_Shadow_ManaBurn')
	local RPoH; if UnitExists('target') then RPoH=UnitHealth('target')/UnitHealthMax('target') else RPoH=0; end;
	local _,_,_,_,TR=GetTalentInfo(2,1);
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName('Attack') C=96 return end;end;
	if not GotBuff('Ability_Racial_BearForm') and not GotBuff('Ability_Druid_CatForm') then 
		if melee() then 
			if not GotDebuff('Spell_Nature_InsectSwarm') and not OoC and RPoH>0.2 and action('Insect Swarm') then return end;
			if (not GotDebuff('Spell_Nature_StarFall') or OoC or RPoH<0.2) and action('Moonfire') then return end;
		end;
		if ranged() then 
			if (not GotDebuff('Spell_Nature_StarFall') or OoC or RPoH<0.2) and action('Moonfire') then return end;
			if not GotDebuff('Spell_Nature_InsectSwarm') and not OoC and RPoH>0.2 and action('Insect Swarm') then return end;
		end;
		if not GotDebuff('Spell_Nature_FaerieFire') and RPoH>0.4 and action('Faerie Fire') then return end;
	else 
		if not GotDebuff('Spell_Nature_FaerieFire') then 
			if action('Faerie Fire (Feral)','Rank 4') then return 
			elseif action('Faerie Fire (Feral)','Rank 3') then return 
			elseif action('Faerie Fire (Feral)','Rank 2') then return 
			elseif action('Faerie Fire (Feral)','Rank 1') then return 
			end;
		end;
		if GotBuff('Ability_Racial_BearForm') then 
			if ranged() and (mana>=5 or OoC) and action('Feral Charge') then return end;
			if melee() and (mana>=30-TR or OoC) and action('Savage Bite') then end;
			if melee() and (mana>=15-TR or OoC) and action('Maul') then end;
		end;
		if GotBuff('Ability_Druid_CatForm') then 
			if not GotBuff('Ability_Mount_JungleTiger') and mana>=30 and action("Tiger's Fury") then end;
			if melee() and not GotDebuff('Ability_Druid_Disembowel') and mana>=40-TR and not OoC 
				and UnitCreatureType('target')~='Elemental' and UnitCreatureType('target')~='Mechanical' and UnitCreatureType('target')~='Uncategorized' and UnitCreatureType('target')~='Undead' 
				and action('Rake') then return end;
			if melee() and (mana>=45-TR or OoC) and action('Claw') then end;
		end;
	end;
end;
Attack_Actions() 