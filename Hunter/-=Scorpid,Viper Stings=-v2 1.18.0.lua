-=Viper Stings,Scorpid=-
Использует Scorpid Sting или Viper Sting в зависимости от маны цели.

/script local _,_,_,_,Efficiency=GetTalentInfo(2,1);Efficiency=1-Efficiency*0.02;if UnitPowerType("target")==0 and UnitMana("target")/UnitManaMax("target")>0.1 then CastSpellByName("Viper Sting");else CastSpellByName("Scorpid Sting");end;

/script 
local _,_,_,_,Efficiency=GetTalentInfo(2,1);Efficiency=1-Efficiency*0.02;
if UnitPowerType("target")==0 and UnitMana("target")/UnitManaMax("target")>0.1 then 
	CastSpellByName("Viper Sting");
else 
	CastSpellByName("Scorpid Sting");
end;


-=Scorpid,Viper Stings=-
Использует Scorpid Sting или Viper Sting в зависимости от маны цели.
/script local function GotDebuff(name,target) if not target then target = "target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return end;if strfind(tex,name) then return cnt end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==0 then return ix;end;if sw==1 then return GetSpellCooldown(ix,"spell");end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;end;local PM=UnitMana("player");local _,_,_,_,Efficiency=GetTalentInfo(2,1);Efficiency=1-Efficiency*0.02;if UnitPowerType("target")==0 and UnitMana("target")/UnitManaMax("target")>0.1 then if not GotDebuff("Ability_Hunter_AimedShot") then if PM>=215*Efficiency and ActSpell("Viper Sting","Rank 3") then return;end;if PM>=175*Efficiency and ActSpell("Viper Sting","Rank 2") then return;end;if PM>=135*Efficiency and ActSpell("Viper Sting","Rank 1") then return;end;end;else if not GotDebuff("Ability_Hunter_CriticalShot") and PM>=70*Efficiency and CastSpellByName("Scorpid Sting") then return;end;end;

/script 
local function GotDebuff(name,target) 
	if not target then target = "target" end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix);
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
local PM=UnitMana("player");
local _,_,_,_,Efficiency=GetTalentInfo(2,1);Efficiency=1-Efficiency*0.02;
if UnitPowerType("target")==0 and UnitMana("target")/UnitManaMax("target")>0.1 then 
	if not GotDebuff("Ability_Hunter_AimedShot") then 
		if PM>=215*Efficiency and ActSpell("Viper Sting","Rank 3") then return;end;
		if PM>=175*Efficiency and ActSpell("Viper Sting","Rank 2") then return;end;
		if PM>=135*Efficiency and ActSpell("Viper Sting","Rank 1") then return;end;
	end;
else 
	if not GotDebuff("Ability_Hunter_CriticalShot") and PM>=70*Efficiency and CastSpellByName("Scorpid Sting") then return;end;
end;