-=Mind Blast+Smite=-
/script local ix,SN,SR=192 while(ix>0) do SN,SR=GetSpellName(ix,"spell") if SN=="Mind Blast" then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Mind Blast");ix=-1;else ix=0;end;else ix=ix-1;end;end;if ix==0 then ix=192;while(ix>0) do SN,SR=GetSpellName(ix,"spell") if SN=="Smite" then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Smite");end;ix=-1;else ix=ix-1;end;end;end;

/script local ix,SN,SR=192 
while(ix>0) do 
	SN,SR=GetSpellName(ix,"spell") 
	if SN=="Mind Blast" then 
		if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Mind Blast");ix=-1;else ix=0;end;
	else ix=ix-1;
	end;
end;
if ix==0 then ix=192;
	while(ix>0) do 
		SN,SR=GetSpellName(ix,"spell") 
		if SN=="Smite" then 
			if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Smite");end;ix=-1;
		else ix=ix-1;
		end;
	end;
end;

-=-

/script local ix;local function GotBuff(name,target) local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff("player",ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==0 then return ix;end;if sw==1 then return GetSpellCooldown(ix,"spell");end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;end;function Attack_Actions() if not GotBuff("Spell_Holy_SearingLightPriest","player") and ActSpell("Mind Blast",nil,1)==0 then CastSpellByName("Mind Blast");else CastSpellByName("Smite");end;end;Attack_Actions() 

/script local ix;
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
				if sw==0 then return ix;end;
				if sw==1 then return GetSpellCooldown(ix,"spell");end;
				if sw==nil then 
					if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;
				end;
			end;
			ix=ix-1;
		end;
	end;
end;
function Attack_Actions() 
	if not GotBuff("Spell_Holy_SearingLightPriest","player") and ActSpell("Mind Blast",nil,1)==0 then CastSpellByName("Mind Blast");
	else 
		CastSpellByName("Smite");
	end;
end;
Attack_Actions() 