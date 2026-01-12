-=Holy Nova+Sun's Embrace=-
/script local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,'spell');return ix;end;end;end;ix=ix-1;end;end;end;function CastSpels()local PM=UnitMana("player");local ix,SE=64,0;local _,_,_,_,MentalAgility=GetTalentInfo(1,3);MentalAgility=1-MentalAgility*0.02if GotBuff("Spell_Holy_HolyProtection") then while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName=="Sun's Embrace" and spellRank=="Rank 4" then SE=150;break;end;if spellName=="Sun's Embrace" and spellRank=="Rank 3" then SE=100;break;end;if spellName=="Sun's Embrace" and spellRank=="Rank 2" then SE=50;break;end;if spellName=="Sun's Embrace" and spellRank=="Rank 1" then SE=25;break;end;ix=ix-1;end;end;if ActSpell("Holy Nova","Rank 6",true) then if UnitMana("player")>=(600-SE)*MentalAgility or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Holy Nova","Rank 6");return;else if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;end;end;if ActSpell("Holy Nova","Rank 5",true) then if UnitMana("player")>=(510-SE)*MentalAgility or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Holy Nova","Rank 5");return;else if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;end;end;if ActSpell("Holy Nova","Rank 4",true) then if UnitMana("player")>=(415-SE)*MentalAgility or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Holy Nova","Rank 4");return;else if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;end;end;if ActSpell("Holy Nova","Rank 3",true) then if UnitMana("player")>=(360-SE)*MentalAgility or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Holy Nova","Rank 3");return;else if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;end;end;if ActSpell("Holy Nova","Rank 2",true) then if UnitMana("player")>=(235-SE)*MentalAgility or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Holy Nova","Rank 2");return;else if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;end;end;if ActSpell("Holy Nova","Rank 1",true) then if UnitMana("player")>=(155-SE)*MentalAgility or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Holy Nova","Rank 1");return;else if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;end;end;CastSpellByName("Holy Nova",1);end;CastSpels();
--
/script 
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function ActSpell(spell,rank,sw) 
	local ix=192;
	while(ix>0) do 
		if ix==0 then return nil;
		else 
			spellName,spellRank=GetSpellName(ix,"spell");
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if sw==true then return ix;end;
				if sw==0 then return GetSpellCooldown(ix,"spell");end;
				if sw==nil then 
					if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,'spell');return ix;end;
				end;
			end;
			ix=ix-1;
		end;
	end;
end;
function CastSpels()
	local PM=UnitMana("player");
	local ix,SE=64,0;
	local _,_,_,_,MentalAgility=GetTalentInfo(1,3);MentalAgility=1-MentalAgility*0.02
	if GotBuff("Spell_Holy_HolyProtection") then 
		while(ix>0) do 
			spellName,spellRank=GetSpellName(ix,"spell");
			if spellName=="Sun's Embrace" and spellRank=="Rank 4" then SE=150;break;end;
			if spellName=="Sun's Embrace" and spellRank=="Rank 3" then SE=100;break;end;
			if spellName=="Sun's Embrace" and spellRank=="Rank 2" then SE=50;break;end;
			if spellName=="Sun's Embrace" and spellRank=="Rank 1" then SE=25;break;end;
			ix=ix-1;
		end;
	end;
	if ActSpell("Holy Nova","Rank 6",true) then 
		if UnitMana("player")>=(600-SE)*MentalAgility or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Holy Nova","Rank 6");return;
		else 
			if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;
		end;
	end;
	if ActSpell("Holy Nova","Rank 5",true) then 
		if UnitMana("player")>=(510-SE)*MentalAgility or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Holy Nova","Rank 5");return;
		else 
			if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;
		end;
	end;
	if ActSpell("Holy Nova","Rank 4",true) then 
		if UnitMana("player")>=(415-SE)*MentalAgility or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Holy Nova","Rank 4");return;
		else 
			if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;
		end;
	end;
	if ActSpell("Holy Nova","Rank 3",true) then 
		if UnitMana("player")>=(360-SE)*MentalAgility or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Holy Nova","Rank 3");return;
		else 
			if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;
		end;
	end;
	if ActSpell("Holy Nova","Rank 2",true) then 
		if UnitMana("player")>=(235-SE)*MentalAgility or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Holy Nova","Rank 2");return;
		else 
			if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;
		end;
	end;
	if ActSpell("Holy Nova","Rank 1",true) then 
		if UnitMana("player")>=(155-SE)*MentalAgility or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Holy Nova","Rank 1");return;
		else 
			if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;
		end;
	end;
	CastSpellByName("Holy Nova",1);
end;
CastSpels();