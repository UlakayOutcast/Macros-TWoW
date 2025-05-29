-=Smite+Sun's Embrace=-
/script local ix,SE,Rank,spellName,spellRank;local function ActSpell(spell,rank,sw) ix=192;while(ix>0) do if ix==0 then return nil;else spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw==1 then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,'spell');return ix;end;end;if sw==nil then return ix;end;end;ix=ix-1;end;end;end;ix,SE=192,0;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if buffed("Sun's Embrace")=="buff" then if spellName=="Sun's Embrace" and spellRank=="Rank 4" then SE=150;break;end;if spellName=="Sun's Embrace" and spellRank=="Rank 3" then SE=100;break;end;if spellName=="Sun's Embrace" and spellRank=="Rank 2" then SE=50;break;end;if spellName=="Sun's Embrace" and spellRank=="Rank 1" then SE=25;break;end;ix=ix-1;else if spellName=="Sun's Embrace" then if GetSpellCooldown(ix,"spell")~=0 then SE=-1;end;break;end;end;ix=ix-1;end;Rank=9;if Rank==9 and UnitLevel("player")>=60 then if ActSpell("Smite","Rank 9") then if UnitMana("player")>=300-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 9)");else if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;end;end;else Rank=Rank-1;end;if Rank==8 and UnitLevel("player")>=54 then if ActSpell("Smite","Rank 8") then if UnitMana("player")>=280-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 8)");else if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;end;end;else Rank=Rank-1;end;if Rank==7 and UnitLevel("player")>=46 then if ActSpell("Smite","Rank 7") then if UnitMana("player")>=230-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 7)");else if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;end;end;else Rank=Rank-1;end;if Rank==6 and UnitLevel("player")>=38 then if ActSpell("Smite","Rank 6") then if UnitMana("player")>=185-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 6)");else if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;end;end;else Rank=Rank-1;end;if Rank==5 and UnitLevel("player")>=30 then if ActSpell("Smite","Rank 5") then if UnitMana("player")>=140-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 5)");else if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;end;end;else Rank=Rank-1;end;if Rank==4 and UnitLevel("player")>=22 then if ActSpell("Smite","Rank 4") then if UnitMana("player")>=95-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 4)");else if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;end;end;else Rank=Rank-1;end;if Rank==3 and UnitLevel("player")>=14 then if ActSpell("Smite","Rank 3") then if UnitMana("player")>=60-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 3)");else if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;end;end;else Rank=Rank-1;end;if Rank==2 and UnitLevel("player")>=6 then if ActSpell("Smite","Rank 2") then if UnitMana("player")>=30-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 2)");else if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;end;end;else Rank=Rank-1;end;if Rank==1 and UnitLevel("player")>=1 then if ActSpell("Smite","Rank 1") then if UnitMana("player")>=20-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 1)");else if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;end;end;else Rank=Rank-1;end;

/script local ix,SE,Rank,spellName,spellRank;
local function ActSpell(spell,rank,sw) 
	ix=192;while(ix>0) do 
		if ix==0 then return nil;
		else 
			spellName,spellRank=GetSpellName(ix,"spell");
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if sw==0 then return GetSpellCooldown(ix,"spell");end;
				if sw==1 then 
					if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,'spell');return ix;end;
				end;
				if sw==nil then return ix;end;
			end;
			ix=ix-1;
		end;
	end;
end;
ix,SE=192,0;
while(ix>0) do 
	spellName,spellRank=GetSpellName(ix,"spell");
	if buffed("Sun's Embrace")=="buff" then 
		if spellName=="Sun's Embrace" and spellRank=="Rank 4" then SE=150;break;end;
		if spellName=="Sun's Embrace" and spellRank=="Rank 3" then SE=100;break;end;
		if spellName=="Sun's Embrace" and spellRank=="Rank 2" then SE=50;break;end;
		if spellName=="Sun's Embrace" and spellRank=="Rank 1" then SE=25;break;end;
		ix=ix-1;
	else 
		if spellName=="Sun's Embrace" then 
			if GetSpellCooldown(ix,"spell")~=0 then SE=-1;end;
			break;
		end;
	end;
	ix=ix-1;
end;
Rank=9;
if Rank==9 and UnitLevel("player")>=60 then 
	if ActSpell("Smite","Rank 9") then 
		if UnitMana("player")>=300-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 9)");
		else 
			if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;
		end;
	end;
else Rank=Rank-1;end;
if Rank==8 and UnitLevel("player")>=54 then 
	if ActSpell("Smite","Rank 8") then 
		if UnitMana("player")>=280-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 8)");
		else 
			if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;
		end;
	end;
else Rank=Rank-1;end;
if Rank==7 and UnitLevel("player")>=46 then 
	if ActSpell("Smite","Rank 7") then 
		if UnitMana("player")>=230-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 7)");
		else 
			if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;
		end;
	end;
else Rank=Rank-1;end;
if Rank==6 and UnitLevel("player")>=38 then 
	if ActSpell("Smite","Rank 6") then 
		if UnitMana("player")>=185-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 6)");
		else 
			if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;
		end;
	end;
else Rank=Rank-1;end;
if Rank==5 and UnitLevel("player")>=30 then 
	if ActSpell("Smite","Rank 5") then 
		if UnitMana("player")>=140-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 5)");
		else 
			if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;
		end;
	end;
else Rank=Rank-1;end;
if Rank==4 and UnitLevel("player")>=22 then 
	if ActSpell("Smite","Rank 4") then 
		if UnitMana("player")>=95-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 4)");
		else 
			if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;
		end;
	end;
else Rank=Rank-1;end;
if Rank==3 and UnitLevel("player")>=14 then 
	if ActSpell("Smite","Rank 3") then 
		if UnitMana("player")>=60-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 3)");
		else 
			if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;
		end;
	end;
else Rank=Rank-1;end;
if Rank==2 and UnitLevel("player")>=6 then 
	if ActSpell("Smite","Rank 2") then 
		if UnitMana("player")>=30-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 2)");
		else 
			if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;
		end;
	end;
else Rank=Rank-1;end;
if Rank==1 and UnitLevel("player")>=1 then 
	if ActSpell("Smite","Rank 1") then 
		if UnitMana("player")>=20-SE or buffed("Inner Focus")=="buff" then CastSpellByName("Smite(Rank 1)");
		else 
			if SE==0 then ActSpell("Sun's Embrace",nil,1);else Rank=Rank-1;end;
		end;
	end;
else Rank=Rank-1;end;