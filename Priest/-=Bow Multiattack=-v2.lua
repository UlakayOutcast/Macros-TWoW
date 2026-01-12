-=Multiattack=- Attack+(Bow+Searing Shot)/Wand+Pain Spike+Chastise + Smite+Shadow Word: Pain+Vampiric Embrace+Mind Blast+Mind Flay+Holy Fire

/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged(UI) if not UI then UI="target"end; if UnitExists(UI) then if not CheckInteractDistance(UI,3) and CheckInteractDistance(UI,4) then return true;end;end;end;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target="target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw)local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then local St,Du=GetSpellCooldown(ix,"spell");if sw=="self" and St==0  then if rank then CastSpellByName(spell.."("..rank..")",1)else CastSpellByName(spell,1);end;return ix;end;if sw==nil and St==0 then if rank then CastSpellByName(spell.."("..rank..")")else CastSpell(ix,"spell");end;return ix;end;if sw==0 then Du=St+Du-GetTime();if Du<=0 then Du=0;end;return Du;end;end;ix=ix-1;end;if sw==0 then return 99;end;end;function Attack_Actions() if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;local TPoH;if UnitExists("target")then TPoH=UnitHealth("target")/UnitHealthMax("target");else TPoH=0;end;if GotBuff("Spell_Holy_SearingLightPriest","player") and not GotBuff("Spell_Shadow_Shadowform","player") and ActSpell("Smite",nil,0)==0 then local S="Smite";CastSpellByName(S);end;if UnitCanAttack("player","target") then local UH=UnitHealth("target");if UH<=378 and ActSpell("Pain Spike","Rank 4",0)==0 then ActSpell("Pain Spike","Rank 4")else if UH<=240 and ActSpell("Pain Spike","Rank 3",0)==0 then ActSpell("Pain Spike","Rank 3")else if UH<=172 and ActSpell("Pain Spike","Rank 2",0)==0 then ActSpell("Pain Spike","Rank 2")else if UH<=85 and ActSpell("Pain Spike","Rank 1",0)==0 then ActSpell("Pain Spike","Rank 1")end;end;end;end;end;if GotBuff("Spell_Holy_SearingLightPriest") and ActSpell("Smite") then return;end;local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);if itemtype == "Bows" then if ranged() then local sw=1;for ix=1,96 do if itemTexture==GetActionTexture(ix) then if IsAutoRepeatAction(ix) then sw=0;end;break;end;end; if sw==1 then CastSpellByName("Auto Shot");return;end;if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Searing Shot") then return;end;end;if melee() then for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");end;break;end;end;end;end;if random()<TPoH and not GotDebuff("Shadow_ShadowWordPain") and ActSpell("Shadow Word: Pain") then return;end;if GotBuff("Spell_Shadow_Shadowform") then if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Vampiric Embrace") then return;end;if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Mind Blast") then return;end;if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Mind Flay") then return;end;end;local _,_,_,_,DF=GetTalentInfo(2,4);local _,_,_,_,PF=GetTalentInfo(1,13);if not GotDebuff("Spell_Holy_SearingLight") and PF==2 and DF==5 and ActSpell("Holy Fire") then return;end;if UnitCanAttack("player","target") and ActSpell("Chastise") then return;end;if itemtype == "Wands" then local ix,VS,VA;for ix=1,99 do if IsAttackAction(ix)then VA=ix;end;if GetSpellName(ix,"spell")=="Shoot" then VS=ix;end;end;if not IsCurrentAction(VA) then AttackTarget()else if GetSpellCooldown(VS,"spell")==0 then CastSpellByName("Shoot","spell")end;end;end;end;Attack_Actions() 

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
local function ranged(UI) if not UI then UI="target"end; if UnitExists(UI) then if not CheckInteractDistance(UI,3) and CheckInteractDistance(UI,4) then return true;end;end;end;
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target="target" end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function ActSpell(spell,rank,sw)
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		spellName,spellRank=GetSpellName(ix,"spell");
		if spellName==spell and (spellRank==rank or rank==nil) then 
			local St,Du=GetSpellCooldown(ix,"spell");
			if sw=="self" and St==0  then 
				if rank then CastSpellByName(spell.."("..rank..")",1)
				else CastSpellByName(spell,1);end;
				return ix;
			end;
			if sw==nil and St==0 then 
				if rank then CastSpellByName(spell.."("..rank..")")
				else CastSpell(ix,"spell");end;
				return ix;
			end;
			if sw==0 then 
				Du=St+Du-GetTime();
				if Du<=0 then Du=0;end;
				return Du;
			end;
		end;
		ix=ix-1;
	end;
	if sw==0 then return 99;end;
end;
function Attack_Actions() 
	if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;
	local TPoH;if UnitExists("target")then TPoH=UnitHealth("target")/UnitHealthMax("target");else TPoH=0;end;
	if GotBuff("Spell_Holy_SearingLightPriest","player") and not GotBuff("Spell_Shadow_Shadowform","player") and ActSpell("Smite",nil,0)==0 then local S="Smite";CastSpellByName(S);end;
	if UnitCanAttack("player","target") then local UH=UnitHealth("target");
		if UH<=378 and ActSpell("Pain Spike","Rank 4",0)==0 then ActSpell("Pain Spike","Rank 4")
		else 
			if UH<=240 and ActSpell("Pain Spike","Rank 3",0)==0 then ActSpell("Pain Spike","Rank 3")
			else 
				if UH<=172 and ActSpell("Pain Spike","Rank 2",0)==0 then ActSpell("Pain Spike","Rank 2")
				else 
					if UH<=85 and ActSpell("Pain Spike","Rank 1",0)==0 then ActSpell("Pain Spike","Rank 1")
					end;
				end;
			end;
		end;
	end;
	if GotBuff("Spell_Holy_SearingLightPriest") and ActSpell("Smite") then return;end;
	local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")
	local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);
	if itemtype == "Bows" then 
		if ranged() then 
			local sw=1;for ix=1,96 do if itemTexture==GetActionTexture(ix) then if IsAutoRepeatAction(ix) then sw=0;end;break;end;end; if sw==1 then CastSpellByName("Auto Shot");return;end;
			if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Searing Shot") then return;end;
		end;
		if melee() then 
			for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");end;break;end;end;
		end;
	end;
	if random()<TPoH and not GotDebuff("Shadow_ShadowWordPain") and ActSpell("Shadow Word: Pain") then return;end;
	if GotBuff("Spell_Shadow_Shadowform") then 
		if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Vampiric Embrace") then return;end;
		if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Mind Blast") then return;end;
		if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Mind Flay") then return;end;
	end;
	local _,_,_,_,DF=GetTalentInfo(2,4);
	local _,_,_,_,PF=GetTalentInfo(1,13);
	if not GotDebuff("Spell_Holy_SearingLight") and PF==2 and DF==5 and ActSpell("Holy Fire") then return;end;
	if UnitCanAttack("player","target") and ActSpell("Chastise") then return;end;
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
end;
Attack_Actions() 


v2 Chastise на себя
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged(UI) if not UI then UI="target"end; if UnitExists(UI) then if not CheckInteractDistance(UI,3) and CheckInteractDistance(UI,4) then return true;end;end;end;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target="target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw)local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then local St,Du=GetSpellCooldown(ix,"spell");if sw=="self" and St==0  then if rank then CastSpellByName(spell.."("..rank..")",1)else CastSpellByName(spell,1);end;return ix;end;if sw==nil and St==0 then if rank then CastSpellByName(spell.."("..rank..")")else CastSpell(ix,"spell");end;return ix;end;if sw==0 then Du=St+Du-GetTime();if Du<=0 then Du=0;end;return Du;end;end;ix=ix-1;end;if sw==0 then return 99;end;end;function Attack_Actions() if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;local TPoH;if UnitExists("target")then TPoH=UnitHealth("target")/UnitHealthMax("target");else TPoH=0;end;if GotBuff("Spell_Holy_SearingLightPriest","player") and not GotBuff("Spell_Shadow_Shadowform","player") and ActSpell("Smite",nil,0)==0 then local S="Smite";CastSpellByName(S);end;if UnitCanAttack("player","target") then local UH=UnitHealth("target");if UH<=378 and ActSpell("Pain Spike","Rank 4",0)==0 then ActSpell("Pain Spike","Rank 4")else if UH<=240 and ActSpell("Pain Spike","Rank 3",0)==0 then ActSpell("Pain Spike","Rank 3")else if UH<=172 and ActSpell("Pain Spike","Rank 2",0)==0 then ActSpell("Pain Spike","Rank 2")else if UH<=85 and ActSpell("Pain Spike","Rank 1",0)==0 then ActSpell("Pain Spike","Rank 1")end;end;end;end;end;if GotBuff("Spell_Holy_SearingLightPriest") and ActSpell("Smite") then return;end;local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);if itemtype == "Bows" then if ranged() then local sw=1;for ix=1,96 do if itemTexture==GetActionTexture(ix) then if IsAutoRepeatAction(ix) then sw=0;end;break;end;end; if sw==1 then CastSpellByName("Auto Shot");return;end;if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Searing Shot") then return;end;end;if melee() then for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");end;break;end;end;end;end;if random()<TPoH and not GotDebuff("Shadow_ShadowWordPain") and ActSpell("Shadow Word: Pain") then return;end;if GotBuff("Spell_Shadow_Shadowform") then if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Vampiric Embrace") then return;end;if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Mind Blast") then return;end;if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Mind Flay") then return;end;end;local _,_,_,_,DF=GetTalentInfo(2,4);local _,_,_,_,PF=GetTalentInfo(1,13);if not GotDebuff("Spell_Holy_SearingLight") and PF==2 and DF==5 and ActSpell("Holy Fire") then return;end;if UnitHealth("player")/UnitHealthMax("player")>=0.8 then ActSpell("Chastise",nil,"self") else ActSpell("Chastise") end;if itemtype == "Wands" then local ix,VS,VA;for ix=1,99 do if IsAttackAction(ix)then VA=ix;end;if GetSpellName(ix,"spell")=="Shoot" then VS=ix;end;end;if not IsCurrentAction(VA) then AttackTarget()else if GetSpellCooldown(VS,"spell")==0 then CastSpellByName("Shoot","spell")end;end;end;end;Attack_Actions() 

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
local function ranged(UI) if not UI then UI="target"end; if UnitExists(UI) then if not CheckInteractDistance(UI,3) and CheckInteractDistance(UI,4) then return true;end;end;end;
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target="target" end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function ActSpell(spell,rank,sw)
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		spellName,spellRank=GetSpellName(ix,"spell");
		if spellName==spell and (spellRank==rank or rank==nil) then 
			local St,Du=GetSpellCooldown(ix,"spell");
			if sw=="self" and St==0  then 
				if rank then CastSpellByName(spell.."("..rank..")",1)
				else CastSpellByName(spell,1);end;
				return ix;
			end;
			if sw==nil and St==0 then 
				if rank then CastSpellByName(spell.."("..rank..")")
				else CastSpell(ix,"spell");end;
				return ix;
			end;
			if sw==0 then 
				Du=St+Du-GetTime();
				if Du<=0 then Du=0;end;
				return Du;
			end;
		end;
		ix=ix-1;
	end;
	if sw==0 then return 99;end;
end;
function Attack_Actions() 
	if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;
	local TPoH;if UnitExists("target")then TPoH=UnitHealth("target")/UnitHealthMax("target");else TPoH=0;end;
	if GotBuff("Spell_Holy_SearingLightPriest","player") and not GotBuff("Spell_Shadow_Shadowform","player") and ActSpell("Smite",nil,0)==0 then local S="Smite";CastSpellByName(S);end;
	if UnitCanAttack("player","target") then local UH=UnitHealth("target");
		if UH<=378 and ActSpell("Pain Spike","Rank 4",0)==0 then ActSpell("Pain Spike","Rank 4")
		else 
			if UH<=240 and ActSpell("Pain Spike","Rank 3",0)==0 then ActSpell("Pain Spike","Rank 3")
			else 
				if UH<=172 and ActSpell("Pain Spike","Rank 2",0)==0 then ActSpell("Pain Spike","Rank 2")
				else 
					if UH<=85 and ActSpell("Pain Spike","Rank 1",0)==0 then ActSpell("Pain Spike","Rank 1")
					end;
				end;
			end;
		end;
	end;
	if GotBuff("Spell_Holy_SearingLightPriest") and ActSpell("Smite") then return;end;
	local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")
	local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);
	if itemtype == "Bows" then 
		if ranged() then 
			local sw=1;for ix=1,96 do if itemTexture==GetActionTexture(ix) then if IsAutoRepeatAction(ix) then sw=0;end;break;end;end; if sw==1 then CastSpellByName("Auto Shot");return;end;
			if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Searing Shot") then return;end;
		end;
		if melee() then 
			for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");end;break;end;end;
		end;
	end;
	if random()<TPoH and not GotDebuff("Shadow_ShadowWordPain") and ActSpell("Shadow Word: Pain") then return;end;
	if GotBuff("Spell_Shadow_Shadowform") then 
		if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Vampiric Embrace") then return;end;
		if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Mind Blast") then return;end;
		if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Mind Flay") then return;end;
	end;
	local _,_,_,_,DF=GetTalentInfo(2,4);
	local _,_,_,_,PF=GetTalentInfo(1,13);
	if not GotDebuff("Spell_Holy_SearingLight") and PF==2 and DF==5 and ActSpell("Holy Fire") then return;end;
	if UnitHealth("player")/UnitHealthMax("player")>=0.8 then ActSpell("Chastise",nil,"self") else ActSpell("Chastise") end;
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
end;
Attack_Actions() 


Без учёта теневой формы
/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;local function ranged(UI) if not UI then UI="target"end; if UnitExists(UI) then if not CheckInteractDistance(UI,3) and CheckInteractDistance(UI,4) then return true;end;end;end;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function GotDebuff(name,target) if not target then target="target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return; end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw)local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then local St,Du=GetSpellCooldown(ix,"spell");if sw=="self" and St==0  then if rank then CastSpellByName(spell.."("..rank..")",1)else CastSpellByName(spell,1);end;return ix;end;if sw==nil and St==0 then if rank then CastSpellByName(spell.."("..rank..")")else CastSpell(ix,"spell");end;return ix;end;if sw==0 then Du=St+Du-GetTime();if Du<=0 then Du=0;end;return Du;end;end;ix=ix-1;end;if sw==0 then return 99;end;end;function Attack_Actions() if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;local TPoH;if UnitExists("target")then TPoH=UnitHealth("target")/UnitHealthMax("target");else TPoH=0;end;if GotBuff("Spell_Holy_SearingLightPriest","player") and not GotBuff("Spell_Shadow_Shadowform","player") and ActSpell("Smite",nil,0)==0 then local S="Smite";CastSpellByName(S);end;if UnitCanAttack("player","target") then local UH=UnitHealth("target");if UH<=378 and ActSpell("Pain Spike","Rank 4",0)==0 then ActSpell("Pain Spike","Rank 4")else if UH<=240 and ActSpell("Pain Spike","Rank 3",0)==0 then ActSpell("Pain Spike","Rank 3")else if UH<=172 and ActSpell("Pain Spike","Rank 2",0)==0 then ActSpell("Pain Spike","Rank 2")else if UH<=85 and ActSpell("Pain Spike","Rank 1",0)==0 then ActSpell("Pain Spike","Rank 1")end;end;end;end;end;if GotBuff("Spell_Holy_SearingLightPriest") and ActSpell("Smite") then return;end;local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);if itemtype == "Bows" then if ranged() then local sw=1;for ix=1,96 do if itemTexture==GetActionTexture(ix) then if IsAutoRepeatAction(ix) then sw=0;end;break;end;end; if sw==1 then CastSpellByName("Auto Shot");return;end;if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Searing Shot") then return;end;end;if melee() then for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");end;break;end;end;end;end;if random()<TPoH and not GotDebuff("Shadow_ShadowWordPain") and ActSpell("Shadow Word: Pain") then return;end;if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Vampiric Embrace") then return;end;if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Mind Blast") then return;end;if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Mind Flay") then return;end;local _,_,_,_,DF=GetTalentInfo(2,4);local _,_,_,_,PF=GetTalentInfo(1,13);if not GotDebuff("Spell_Holy_SearingLight") and PF==2 and DF==5 and ActSpell("Holy Fire") then return;end;if UnitCanAttack("player","target") and ActSpell("Chastise") then return;end;if itemtype == "Wands" then local ix,VS,VA;for ix=1,99 do if IsAttackAction(ix)then VA=ix;end;if GetSpellName(ix,"spell")=="Shoot" then VS=ix;end;end;if not IsCurrentAction(VA) then AttackTarget()else if GetSpellCooldown(VS,"spell")==0 then CastSpellByName("Shoot","spell")end;end;end;end;Attack_Actions() 

/script 
local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end;end;
local function ranged(UI) if not UI then UI="target"end; if UnitExists(UI) then if not CheckInteractDistance(UI,3) and CheckInteractDistance(UI,4) then return true;end;end;end;
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target="target" end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return; end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function ActSpell(spell,rank,sw)
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		spellName,spellRank=GetSpellName(ix,"spell");
		if spellName==spell and (spellRank==rank or rank==nil) then 
			local St,Du=GetSpellCooldown(ix,"spell");
			if sw=="self" and St==0  then 
				if rank then CastSpellByName(spell.."("..rank..")",1)
				else CastSpellByName(spell,1);end;
				return ix;
			end;
			if sw==nil and St==0 then 
				if rank then CastSpellByName(spell.."("..rank..")")
				else CastSpell(ix,"spell");end;
				return ix;
			end;
			if sw==0 then 
				Du=St+Du-GetTime();
				if Du<=0 then Du=0;end;
				return Du;
			end;
		end;
		ix=ix-1;
	end;
	if sw==0 then return 99;end;
end;
function Attack_Actions() 
	if UnitCanAttack("player","target")==nil or UnitHealth("target")<=0 then TargetNearestEnemy();end;
	local TPoH;if UnitExists("target")then TPoH=UnitHealth("target")/UnitHealthMax("target");else TPoH=0;end;
	if GotBuff("Spell_Holy_SearingLightPriest","player") and not GotBuff("Spell_Shadow_Shadowform","player") and ActSpell("Smite",nil,0)==0 then local S="Smite";CastSpellByName(S);end;
	if UnitCanAttack("player","target") then local UH=UnitHealth("target");
		if UH<=378 and ActSpell("Pain Spike","Rank 4",0)==0 then ActSpell("Pain Spike","Rank 4")
		else 
			if UH<=240 and ActSpell("Pain Spike","Rank 3",0)==0 then ActSpell("Pain Spike","Rank 3")
			else 
				if UH<=172 and ActSpell("Pain Spike","Rank 2",0)==0 then ActSpell("Pain Spike","Rank 2")
				else 
					if UH<=85 and ActSpell("Pain Spike","Rank 1",0)==0 then ActSpell("Pain Spike","Rank 1")
					end;
				end;
			end;
		end;
	end;
	if GotBuff("Spell_Holy_SearingLightPriest") and ActSpell("Smite") then return;end;
	local _,_,link=string.find(GetInventoryItemLink("player", 18),"(item:%d+:%d+:%d+:%d+)")
	local _,_,_,_,_,itemtype,_,_,itemTexture=GetItemInfo(link);
	if itemtype == "Bows" then 
		if ranged() then 
			local sw=1;for ix=1,96 do if itemTexture==GetActionTexture(ix) then if IsAutoRepeatAction(ix) then sw=0;end;break;end;end; if sw==1 then CastSpellByName("Auto Shot");return;end;
			if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Searing Shot") then return;end;
		end;
		if melee() then 
			for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack");end;break;end;end;
		end;
	end;
	if random()<TPoH and not GotDebuff("Shadow_ShadowWordPain") and ActSpell("Shadow Word: Pain") then return;end;
	if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Vampiric Embrace") then return;end;
	if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Mind Blast") then return;end;
	if not GotDebuff("Spell_Shadow_SiphonMana") and ActSpell("Mind Flay") then return;end;
	local _,_,_,_,DF=GetTalentInfo(2,4);
	local _,_,_,_,PF=GetTalentInfo(1,13);
	if not GotDebuff("Spell_Holy_SearingLight") and PF==2 and DF==5 and ActSpell("Holy Fire") then return;end;
	if UnitCanAttack("player","target") and ActSpell("Chastise") then return;end;
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
end;
Attack_Actions() 