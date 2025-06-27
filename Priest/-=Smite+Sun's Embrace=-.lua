-=Smite+Sun's Embrace=- 2
/script local SE,Rank,spellName,spellRank=0;if nil then CastSpellByName("Smite");end;local function ActSpell(spell,rank,sw) local ix=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,'spell');return ix;end;end;end;ix=ix-1;end;end;if sw==0 then return 9;end;end;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;if GotBuff("Spell_Holy_HolyProtection") then local ix,SE=64,0;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName=="Sun's Embrace" and spellRank=="Rank 4" then SE=150;break;end;if spellName=="Sun's Embrace" and spellRank=="Rank 3" then SE=100;break;end;if spellName=="Sun's Embrace" and spellRank=="Rank 2" then SE=50;break;end;if spellName=="Sun's Embrace" and spellRank=="Rank 1" then SE=25;break;end;ix=ix-1;end;end;function castSmite()if ActSpell("Smite","Rank 9",true) then if UnitMana("player")>=300-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 9");return;else if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;end;end; if ActSpell("Smite","Rank 8",true) then if UnitMana("player")>=280-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 8");return;else if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;end;end; if ActSpell("Smite","Rank 7",true) then if UnitMana("player")>=230-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 7");return;else if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;end;end; if ActSpell("Smite","Rank 6",true) then if UnitMana("player")>=185-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 6");return;else if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;end;end; if ActSpell("Smite","Rank 5",true) then if UnitMana("player")>=140-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 5");return;else if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;end;end; if ActSpell("Smite","Rank 4",true) then if UnitMana("player")>=95-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 4");return;else if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;end;end; if ActSpell("Smite","Rank 3",true) then if UnitMana("player")>=60-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 3");return;else if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;end;end; if ActSpell("Smite","Rank 2",true) then if UnitMana("player")>=30-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 2");return;else if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;end;end; if ActSpell("Smite","Rank 1",true) then if UnitMana("player")>=20-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 1");return;else if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;end;end;end;castSmite();

/script local SE,Rank,spellName,spellRank=0;if nil then CastSpellByName("Smite");end;
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
	if sw==0 then return 9;end;
end;
local function GotBuff(name,target) 
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix);
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
if GotBuff("Spell_Holy_HolyProtection") then 
	local ix,SE=64,0;
	while(ix>0) do 
		spellName,spellRank=GetSpellName(ix,"spell");
		if spellName=="Sun's Embrace" and spellRank=="Rank 4" then SE=150;break;end;
		if spellName=="Sun's Embrace" and spellRank=="Rank 3" then SE=100;break;end;
		if spellName=="Sun's Embrace" and spellRank=="Rank 2" then SE=50;break;end;
		if spellName=="Sun's Embrace" and spellRank=="Rank 1" then SE=25;break;end;
		ix=ix-1;
	end;
end;
function castSmite()
	if ActSpell("Smite","Rank 9",true) then 
		if UnitMana("player")>=300-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 9");return;
		else 
			if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;
		end;
	end; 
	if ActSpell("Smite","Rank 8",true) then 
		if UnitMana("player")>=280-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 8");return;
		else 
			if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;
		end;
	end; 
	if ActSpell("Smite","Rank 7",true) then 
		if UnitMana("player")>=230-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 7");return;
		else 
			if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;
		end;
	end; 
	if ActSpell("Smite","Rank 6",true) then 
		if UnitMana("player")>=185-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 6");return;
		else 
			if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;
		end;
	end; 
	if ActSpell("Smite","Rank 5",true) then 
		if UnitMana("player")>=140-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 5");return;
		else 
			if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;
		end;
	end; 
	if ActSpell("Smite","Rank 4",true) then 
		if UnitMana("player")>=95-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 4");return;
		else 
			if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;
		end;
	end; 
	if ActSpell("Smite","Rank 3",true) then 
		if UnitMana("player")>=60-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 3");return;
		else 
			if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;
		end;
	end; 
	if ActSpell("Smite","Rank 2",true) then 
		if UnitMana("player")>=30-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 2");return;
		else 
			if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;
		end;
	end; 
	if ActSpell("Smite","Rank 1",true) then 
		if UnitMana("player")>=20-SE or GotBuff("Spell_Frost_WindWalkOn") then ActSpell("Smite","Rank 1");return;
		else 
			if ActSpell("Sun's Embrace",nil,0)==0 then ActSpell("Sun's Embrace");return;end;
		end;
	end;
end;
castSmite();