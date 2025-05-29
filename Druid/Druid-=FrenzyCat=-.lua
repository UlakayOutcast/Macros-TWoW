-=Druid FrenzyCat=-

/script local function melee() if UnitExists('target') then return CheckInteractDistance('target',2) end;end;local function ranged() if UnitExists('target') then return not melee() end;end;local function inCombat() return UnitAffectingCombat('player') end;local function GotBuff(name,target) local tex,cnt for ix = 1,32 do tex,cnt = UnitBuff('player',ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = 'target' end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function action(spell,rank,self) local ix,spellName,spellRank=192 while(ix>0) do if ix==0 then return nil ;else spellName,spellRank=GetSpellName(ix,"spell") if spellName==spell and (spellRank==rank or rank==nil) then if GetSpellCooldown(ix,"spell")==0 then if self then CastSpellByName(spell.."("..rank..")",self) else CastSpell(ix,'spell') end;return true; end;end;ix=ix-1 end;end;end;function Attack_Actions() local IsMana=UnitMana('player')local MaxMana=UnitManaMax('player')local OoC=GotBuff('Spell_Shadow_ManaBurn')local RPoH; if UnitExists('target') then RPoH=UnitHealth('target')/UnitHealthMax('target') else RPoH=0; end;local _,_,_,_,TR=GetTalentInfo(2,1);local N,X=GetNumShapeshiftForms();local TheMana,TheMaxMana=0,0; if DruidBarKey.keepthemana then TheMana=DruidBarKey.keepthemana;TheMaxMana=DruidBarKey.maxmana; end;for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName('Attack') C=96 return; end;end;if not GotBuff('Ability_Racial_BearForm') then if not GotDebuff('Spell_Nature_StarFall') and (TheMana>TheMaxMana*0.33) then  if GotBuff('Ability_Druid_CatForm') and action("Cat Form") then return;end;if (not GotDebuff('Spell_Nature_StarFall') or OoC) and action('Moonfire') then return; end;else if MaxMana>100 and IsMana<MaxMana*0.33 and action('Innervate') then return; end;if not GotBuff('Ability_Racial_BearForm') and not GotBuff('Ability_Druid_CatForm') then action("Cat Form");end;end;end;if GotBuff('Ability_Racial_BearForm') or GotBuff('Ability_Druid_CatForm') then if not GotDebuff('Spell_Nature_FaerieFire') then if action('Faerie Fire (Feral)','Rank 4') then return; elseif action('Faerie Fire (Feral)','Rank 3') then return; elseif action('Faerie Fire (Feral)','Rank 2') then return; elseif action('Faerie Fire (Feral)','Rank 1') then return; end;end;if GotBuff('Ability_Racial_BearForm') then if ranged() and (IsMana>=5 or OoC) and action('Feral Charge') then return; end;if melee() and (IsMana>=30-TR or OoC) and action('Savage Bite') then end;if melee() and (IsMana>=15 or OoC) and action('Swipe') then end;end;if GotBuff('Ability_Druid_CatForm') then if GetComboPoints()*20>=math.random(50,100) and IsMana>=35 then action('Ferocious Bite');end;if not GotBuff('Ability_Mount_JungleTiger') and IsMana>=30 and action("Tiger's Fury") then end;if melee() and not GotDebuff('Ability_Druid_Disembowel') and IsMana>=40-TR and not OoC and UnitCreatureType('target')~='Elemental' and UnitCreatureType('target')~='Mechanical' and UnitCreatureType('target')~='Uncategorized' and UnitCreatureType('target')~='Undead' and action('Rake') then return; end;if melee() and (IsMana>=45-TR or OoC) and action('Claw') then end;end;end;end;Attack_Actions() 
--
/script 
local function melee() if UnitExists('target') then return CheckInteractDistance('target',2) end;end;
local function ranged() if UnitExists('target') then return not melee() end;end;
local function inCombat() return UnitAffectingCombat('player') end;
local function GotBuff(name,target) 
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitBuff('player',ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target = 'target' end;
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function action(spell,rank,self) 
	local ix,spellName,spellRank=192 
	while(ix>0) do 
		if ix==0 then return nil ;
		else 
			spellName,spellRank=GetSpellName(ix,"spell") 
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if GetSpellCooldown(ix,"spell")==0 then 
					if self then CastSpellByName(spell.."("..rank..")",self) 
					else CastSpell(ix,'spell') end;
					return true; 
				end;
			end;
			ix=ix-1 
		end;
	end;
end;
function Attack_Actions() 
	local IsMana=UnitMana('player')
	local MaxMana=UnitManaMax('player')
	local OoC=GotBuff('Spell_Shadow_ManaBurn')
	local RPoH; if UnitExists('target') then RPoH=UnitHealth('target')/UnitHealthMax('target') else RPoH=0; end;
	local _,_,_,_,TR=GetTalentInfo(2,1);
	local N,X=GetNumShapeshiftForms();
	local TheMana,TheMaxMana=0,0; if DruidBarKey.keepthemana then TheMana=DruidBarKey.keepthemana;TheMaxMana=DruidBarKey.maxmana; end;
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName('Attack') C=96 return; end;end;
	if not GotBuff('Ability_Racial_BearForm') then 
		if not GotDebuff('Spell_Nature_StarFall') and (TheMana>TheMaxMana*0.33) then  
			if GotBuff('Ability_Druid_CatForm') and action("Cat Form") then return;end;
			if (not GotDebuff('Spell_Nature_StarFall') or OoC) and action('Moonfire') then return; end;
		else 
			if MaxMana>100 and IsMana<MaxMana*0.33 and action('Innervate') then return; end;
			if not GotBuff('Ability_Racial_BearForm') and not GotBuff('Ability_Druid_CatForm') then action("Cat Form");end;
		end;
	end;
	if GotBuff('Ability_Racial_BearForm') or GotBuff('Ability_Druid_CatForm') then 
		if not GotDebuff('Spell_Nature_FaerieFire') then 
			if action('Faerie Fire (Feral)','Rank 4') then return; 
			elseif action('Faerie Fire (Feral)','Rank 3') then return; 
			elseif action('Faerie Fire (Feral)','Rank 2') then return; 
			elseif action('Faerie Fire (Feral)','Rank 1') then return; 
			end;
		end;
		if GotBuff('Ability_Racial_BearForm') then 
			if ranged() and (IsMana>=5 or OoC) and action('Feral Charge') then return; end;
			if melee() and (IsMana>=30-TR or OoC) and action('Savage Bite') then end;
			if melee() and (IsMana>=15 or OoC) and action('Swipe') then end;
		end;
		if GotBuff('Ability_Druid_CatForm') then 
			if GetComboPoints()*20>=math.random(50,100) and IsMana>=35 then action('Ferocious Bite');end;
			if not GotBuff('Ability_Mount_JungleTiger') and IsMana>=30 and action("Tiger's Fury") then end;
			if melee() and not GotDebuff('Ability_Druid_Disembowel') and IsMana>=40-TR and not OoC 
				and UnitCreatureType('target')~='Elemental' and UnitCreatureType('target')~='Mechanical' and UnitCreatureType('target')~='Uncategorized' and UnitCreatureType('target')~='Undead' 
				and action('Rake') then return; end;
			if melee() and (IsMana>=45-TR or OoC) and action('Claw') then end;
		end;
	end;
end;
Attack_Actions() 



-=-

/script local function melee() if UnitExists('target') then return CheckInteractDistance('target',2) end;end;local function ranged() if UnitExists('target') then return not melee() end;end;local function inCombat() return UnitAffectingCombat('player') end;local function GotBuff(name,target) local tex,cnt for ix = 1,32 do tex,cnt = UnitBuff('player',ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target = 'target' end;local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function action(spell,rank,self) local ix,spellName,spellRank=192 while(ix>0) do if ix==0 then return nil ;else spellName,spellRank=GetSpellName(ix,"spell") if spellName==spell and (spellRank==rank or rank==nil) then if GetSpellCooldown(ix,"spell")==0 then if self then CastSpellByName(spell.."("..rank..")",self) else CastSpell(ix,'spell') end;return true; end;end;ix=ix-1 end;end;end;function Attack_Actions() local IsMana=UnitMana('player')local MaxMana=UnitManaMax('player')local OoC=GotBuff('Spell_Shadow_ManaBurn')local RPoH; if UnitExists('target') then RPoH=UnitHealth('target')/UnitHealthMax('target') else RPoH=0; end;local _,_,_,_,TR=GetTalentInfo(2,1);local N,X=GetNumShapeshiftForms();local TheMana,TheMaxMana=0,0; if DruidBarKey.keepthemana then TheMana=DruidBarKey.keepthemana;TheMaxMana=DruidBarKey.maxmana; end;for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName('Attack') C=96 return; end;end;if ( ( ( (not GotDebuff('Spell_Nature_InsectSwarm') and RPoH>0.2) and not GotDebuff('Spell_Nature_StarFall') ) and not GotBuff('Ability_Racial_BearForm') and GotBuff('Ability_Druid_CatForm') ) or ( ( (not GotDebuff('Spell_Nature_InsectSwarm') and RPoH>0.2) or not GotDebuff('Spell_Nature_StarFall') ) and not GotBuff('Ability_Racial_BearForm') and not GotBuff('Ability_Druid_CatForm') ) )and (TheMana>TheMaxMana*0.3) then if GotBuff('Ability_Druid_CatForm') and action("Cat Form") then return;end;if MaxMana>100 and IsMana<MaxMana*0.33 and action('Innervate') then return; end;print("cast")if melee() then if not GotDebuff('Spell_Nature_InsectSwarm') and not OoC and RPoH>0.2 and action('Insect Swarm') then return; end;if (not GotDebuff('Spell_Nature_StarFall') or OoC or RPoH<0.2) and action('Moonfire') then return; end;end;if ranged() then if (not GotDebuff('Spell_Nature_StarFall') or OoC or RPoH<0.2) and action('Moonfire') then return; end;if not GotDebuff('Spell_Nature_InsectSwarm') and not OoC and RPoH>0.2 and action('Insect Swarm') then return; end;end;else if not GotBuff('Ability_Racial_BearForm') and not GotBuff('Ability_Druid_CatForm') then action("Cat Form");print("form")end;end;if GotBuff('Ability_Racial_BearForm') or GotBuff('Ability_Druid_CatForm') then if not GotDebuff('Spell_Nature_FaerieFire') then if action('Faerie Fire (Feral)','Rank 4') then return; elseif action('Faerie Fire (Feral)','Rank 3') then return; elseif action('Faerie Fire (Feral)','Rank 2') then return; elseif action('Faerie Fire (Feral)','Rank 1') then return; end;end;if GotBuff('Ability_Racial_BearForm') then if ranged() and (IsMana>=5 or OoC) and action('Feral Charge') then return; end;if melee() and (IsMana>=30-TR or OoC) and action('Savage Bite') then end;if melee() and (IsMana>=15 or OoC) and action('Swipe') then end;end;if GotBuff('Ability_Druid_CatForm') then if GetComboPoints()==5 then action('Ferocious Bite');end;if not GotBuff('Ability_Mount_JungleTiger') and IsMana>=30 and action("Tiger's Fury") then end;if melee() and not GotDebuff('Ability_Druid_Disembowel') and IsMana>=40-TR and not OoC and UnitCreatureType('target')~='Elemental' and UnitCreatureType('target')~='Mechanical' and UnitCreatureType('target')~='Uncategorized' and UnitCreatureType('target')~='Undead' and action('Rake') then return; end;if melee() and (IsMana>=45-TR or OoC) and action('Claw') then end;end;end;end;Attack_Actions() 
--
/script 
local function melee() if UnitExists('target') then return CheckInteractDistance('target',2) end;end;
local function ranged() if UnitExists('target') then return not melee() end;end;
local function inCombat() return UnitAffectingCombat('player') end;
local function GotBuff(name,target) 
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitBuff('player',ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target = 'target' end;
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function action(spell,rank,self) 
	local ix,spellName,spellRank=192 
	while(ix>0) do 
		if ix==0 then return nil ;
		else 
			spellName,spellRank=GetSpellName(ix,"spell") 
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if GetSpellCooldown(ix,"spell")==0 then 
					if self then CastSpellByName(spell.."("..rank..")",self) 
					else CastSpell(ix,'spell') end;
					return true; 
				end;
			end;
			ix=ix-1 
		end;
	end;
end;
function Attack_Actions() 
	local IsMana=UnitMana('player')
	local MaxMana=UnitManaMax('player')
	local OoC=GotBuff('Spell_Shadow_ManaBurn')
	local RPoH; if UnitExists('target') then RPoH=UnitHealth('target')/UnitHealthMax('target') else RPoH=0; end;
	local _,_,_,_,TR=GetTalentInfo(2,1);
	local N,X=GetNumShapeshiftForms();
	local TheMana,TheMaxMana=0,0; if DruidBarKey.keepthemana then TheMana=DruidBarKey.keepthemana;TheMaxMana=DruidBarKey.maxmana; end;
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName('Attack') C=96 return; end;end;
	if ( ( ( (not GotDebuff('Spell_Nature_InsectSwarm') and RPoH>0.2) and not GotDebuff('Spell_Nature_StarFall') ) and not GotBuff('Ability_Racial_BearForm') and GotBuff('Ability_Druid_CatForm') ) 
	or ( ( (not GotDebuff('Spell_Nature_InsectSwarm') and RPoH>0.2) or not GotDebuff('Spell_Nature_StarFall') ) and not GotBuff('Ability_Racial_BearForm') and not GotBuff('Ability_Druid_CatForm') ) )
	and (TheMana>TheMaxMana*0.3) then 
		if GotBuff('Ability_Druid_CatForm') and action("Cat Form") then return;end;
			if MaxMana>100 and IsMana<MaxMana*0.33 and action('Innervate') then return; end;
			if melee() then 
				if not GotDebuff('Spell_Nature_InsectSwarm') and not OoC and RPoH>0.2 and action('Insect Swarm') then return; end;
				if (not GotDebuff('Spell_Nature_StarFall') or OoC or RPoH<0.2) and action('Moonfire') then return; end;
			end;
			if ranged() then 
				if (not GotDebuff('Spell_Nature_StarFall') or OoC or RPoH<0.2) and action('Moonfire') then return; end;
				if not GotDebuff('Spell_Nature_InsectSwarm') and not OoC and RPoH>0.2 and action('Insect Swarm') then return; end;
			end;
		
	else 
		if not GotBuff('Ability_Racial_BearForm') and not GotBuff('Ability_Druid_CatForm') then action("Cat Form");print("form")end;
	end;
	if GotBuff('Ability_Racial_BearForm') or GotBuff('Ability_Druid_CatForm') then 
		if not GotDebuff('Spell_Nature_FaerieFire') then 
			if action('Faerie Fire (Feral)','Rank 4') then return; 
			elseif action('Faerie Fire (Feral)','Rank 3') then return; 
			elseif action('Faerie Fire (Feral)','Rank 2') then return; 
			elseif action('Faerie Fire (Feral)','Rank 1') then return; 
			end;
		end;
		if GotBuff('Ability_Racial_BearForm') then 
			if ranged() and (IsMana>=5 or OoC) and action('Feral Charge') then return; end;
			if melee() and (IsMana>=30-TR or OoC) and action('Savage Bite') then end;
			if melee() and (IsMana>=15 or OoC) and action('Swipe') then end;
		end;
		if GotBuff('Ability_Druid_CatForm') then 
			if GetComboPoints()==5 then action('Ferocious Bite');end;
			if not GotBuff('Ability_Mount_JungleTiger') and IsMana>=30 and action("Tiger's Fury") then end;
			if melee() and not GotDebuff('Ability_Druid_Disembowel') and IsMana>=40-TR and not OoC 
				and UnitCreatureType('target')~='Elemental' and UnitCreatureType('target')~='Mechanical' and UnitCreatureType('target')~='Uncategorized' and UnitCreatureType('target')~='Undead' 
				and action('Rake') then return; end;
			if melee() and (IsMana>=45-TR or OoC) and action('Claw') then end;
		end;
	end;
end;
Attack_Actions() 