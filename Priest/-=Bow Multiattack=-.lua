-=Multiattack=- Attack+(Bow+Searing Shot)+Pain Spike+Chastise

/script local ix;local function melee() if UnitExists("target") then return CheckInteractDistance("target",2);end;end;local function ranged() if UnitExists("target") then return not melee();end;end;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==-1 then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw==nil or sw==1 then if GetSpellCooldown(ix,"spell")==0 then if rank then CastSpellByName(spell.."("..rank..")",sw);else CastSpellByName(spell,sw);end;end;end;end;ix=ix-1;end;end;end;function Attack_Actions() if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;if GotBuff("Spell_Holy_SearingLightPriest","player") and not GotBuff("Spell_Shadow_Shadowform","player") and ActSpell("Smite",nil,0)==0 then local S="Smite";CastSpellByName(S);end;if UnitCanAttack("player","target") then local UH=UnitHealth("target");if UH<=378 and ActSpell("Pain Spike","Rank 4",0) then ActSpell("Pain Spike","Rank 4")else if UH<=240 and ActSpell("Pain Spike","Rank 3",0) then ActSpell("Pain Spike","Rank 3")else if UH<=172 and ActSpell("Pain Spike","Rank 2",0) then ActSpell("Pain Spike","Rank 2")else if UH<=85 and ActSpell("Pain Spike","Rank 1",0) then ActSpell("Pain Spike","Rank 1")end;end;end;end;end;local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);if itemtype == "Bows" then if ranged() then local sw=1;for ix=1,96 do if itemTexture==GetActionTexture(ix) then if IsAutoRepeatAction(ix) then sw=0;end;break;end;end; if sw==1 then CastSpellByName("Auto Shot");return;end;ActSpell("Searing Shot");end;if melee() then for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");end;break;end;end;end;end;if itemtype == "Wands" then local ix,VS,VA;for ix=1,99 do if IsAttackAction(ix)then VA=ix;end;if GetSpellName(ix,"spell")=="Shoot" then VS=ix;end;end;if not IsCurrentAction(VA) then AttackTarget()else if GetSpellCooldown(VS,"spell")==0 then CastSpellByName("Shoot","spell")end;end;end;if UnitCanAttack("player","target") then ActSpell("Chastise") end;end;Attack_Actions() 

/script local ix;
local function melee() if UnitExists("target") then return CheckInteractDistance("target",2);end;end;
local function ranged() if UnitExists("target") then return not melee();end;end;
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function ActSpell(spell,rank,sw) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		if ix==0 then return nil;
		else 
			spellName,spellRank=GetSpellName(ix,"spell");
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if sw==-1 then return ix;end;
				if sw==0 then return GetSpellCooldown(ix,"spell");end;
				if sw==nil or sw==1 then 
					if GetSpellCooldown(ix,"spell")==0 then 
						if rank then CastSpellByName(spell.."("..rank..")",sw);
						else CastSpellByName(spell,sw);end;
					end;
				end;
			end;
			ix=ix-1;
		end;
	end;
end;
function Attack_Actions() 
	if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;
	if GotBuff("Spell_Holy_SearingLightPriest","player") and not GotBuff("Spell_Shadow_Shadowform","player") and ActSpell("Smite",nil,0)==0 then local S="Smite";CastSpellByName(S);end;
	if UnitCanAttack("player","target") then local UH=UnitHealth("target");
		if UH<=378 and ActSpell("Pain Spike","Rank 4",0) then ActSpell("Pain Spike","Rank 4")
		else 
			if UH<=240 and ActSpell("Pain Spike","Rank 3",0) then ActSpell("Pain Spike","Rank 3")
			else 
				if UH<=172 and ActSpell("Pain Spike","Rank 2",0) then ActSpell("Pain Spike","Rank 2")
				else 
					if UH<=85 and ActSpell("Pain Spike","Rank 1",0) then ActSpell("Pain Spike","Rank 1")
					end;
				end;
			end;
		end;
	end;
	local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")
	local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);
	if itemtype == "Bows" then 
		if ranged() then 
			local sw=1;for ix=1,96 do if itemTexture==GetActionTexture(ix) then if IsAutoRepeatAction(ix) then sw=0;end;break;end;end; if sw==1 then CastSpellByName("Auto Shot");return;end;
			ActSpell("Searing Shot");
		end;
		if melee() then 
			for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");end;break;end;end;
		end;
	end;
	if itemtype == "Wands" then 
		local ix,VS,VA;
		for ix=1,99 do 
			if IsAttackAction(ix)then VA=ix;end;
			if GetSpellName(ix,"spell")=="Shoot" then VS=ix;end;
		end;
		if not IsCurrentAction(VA) then AttackTarget()
		else 
			if GetSpellCooldown(VS,"spell")==0 then 
				CastSpellByName("Shoot","spell")
			end;
		end;
	end;
	if UnitCanAttack("player","target") then ActSpell("Chastise") end;
end;
Attack_Actions() 


v2 Chastise на себя
/script local ix;local function melee() if UnitExists("target") then return CheckInteractDistance("target",2);end;end;local function ranged() if UnitExists("target") then return not melee();end;end;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==-1 then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw==nil or sw==1 then if GetSpellCooldown(ix,"spell")==0 then if rank then CastSpellByName(spell.."("..rank..")",sw);else CastSpellByName(spell,sw);end;end;end;end;ix=ix-1;end;end;end;function Attack_Actions() if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;if GotBuff("Spell_Holy_SearingLightPriest","player") and not GotBuff("Spell_Shadow_Shadowform","player") and ActSpell("Smite",nil,0)==0 then local S="Smite";CastSpellByName(S);end;if UnitCanAttack("player","target") then local UH=UnitHealth("target");if UH<=378 and ActSpell("Pain Spike","Rank 4",0) then ActSpell("Pain Spike","Rank 4")else if UH<=240 and ActSpell("Pain Spike","Rank 3",0) then ActSpell("Pain Spike","Rank 3")else if UH<=172 and ActSpell("Pain Spike","Rank 2",0) then ActSpell("Pain Spike","Rank 2")else if UH<=85 and ActSpell("Pain Spike","Rank 1",0) then ActSpell("Pain Spike","Rank 1")end;end;end;end;end;local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);if itemtype == "Bows" then if ranged() then local sw=1;for ix=1,96 do if itemTexture==GetActionTexture(ix) then if IsAutoRepeatAction(ix) then sw=0;end;break;end;end; if sw==1 then CastSpellByName("Auto Shot");return;end;ActSpell("Searing Shot");end;if melee() then for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");end;break;end;end;end;end;if itemtype == "Wands" then local ix,VS,VA;for ix=1,99 do if IsAttackAction(ix)then VA=ix;end;if GetSpellName(ix,"spell")=="Shoot" then VS=ix;end;end;if not IsCurrentAction(VA) then AttackTarget()else if GetSpellCooldown(VS,"spell")==0 then CastSpellByName("Shoot","spell")end;end;end;if UnitHealth("player")/UnitHealthMax("player")<0.8 and UnitCanAttack("player","target") then ActSpell("Chastise") else ActSpell("Chastise",nil,1) end;end;Attack_Actions() 

/script local ix;
local function melee() if UnitExists("target") then return CheckInteractDistance("target",2);end;end;
local function ranged() if UnitExists("target") then return not melee();end;end;
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function ActSpell(spell,rank,sw) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		if ix==0 then return nil;
		else 
			spellName,spellRank=GetSpellName(ix,"spell");
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if sw==-1 then return ix;end;
				if sw==0 then return GetSpellCooldown(ix,"spell");end;
				if sw==nil or sw==1 then 
					if GetSpellCooldown(ix,"spell")==0 then 
						if rank then CastSpellByName(spell.."("..rank..")",sw);
						else CastSpellByName(spell,sw);end;
					end;
				end;
			end;
			ix=ix-1;
		end;
	end;
end;
function Attack_Actions() 
	if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;
	if GotBuff("Spell_Holy_SearingLightPriest","player") and not GotBuff("Spell_Shadow_Shadowform","player") and ActSpell("Smite",nil,0)==0 then local S="Smite";CastSpellByName(S);end;
	if UnitCanAttack("player","target") then local UH=UnitHealth("target");
		if UH<=378 and ActSpell("Pain Spike","Rank 4",0) then ActSpell("Pain Spike","Rank 4")
		else 
			if UH<=240 and ActSpell("Pain Spike","Rank 3",0) then ActSpell("Pain Spike","Rank 3")
			else 
				if UH<=172 and ActSpell("Pain Spike","Rank 2",0) then ActSpell("Pain Spike","Rank 2")
				else 
					if UH<=85 and ActSpell("Pain Spike","Rank 1",0) then ActSpell("Pain Spike","Rank 1")
					end;
				end;
			end;
		end;
	end;
	local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")
	local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);
	if itemtype == "Bows" then 
		if ranged() then 
			local sw=1;for ix=1,96 do if itemTexture==GetActionTexture(ix) then if IsAutoRepeatAction(ix) then sw=0;end;break;end;end; if sw==1 then CastSpellByName("Auto Shot");return;end;
			ActSpell("Searing Shot");
		end;
		if melee() then 
			for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");end;break;end;end;
		end;
	end;
	if itemtype == "Wands" then 
		local ix,VS,VA;
		for ix=1,99 do 
			if IsAttackAction(ix)then VA=ix;end;
			if GetSpellName(ix,"spell")=="Shoot" then VS=ix;end;
		end;
		if not IsCurrentAction(VA) then AttackTarget()
		else 
			if GetSpellCooldown(VS,"spell")==0 then 
				CastSpellByName("Shoot","spell")
			end;
		end;
	end;
	if UnitHealth("player")/UnitHealthMax("player")<0.8 and UnitCanAttack("player","target") then ActSpell("Chastise") else ActSpell("Chastise",nil,1) end;
end;
Attack_Actions() 