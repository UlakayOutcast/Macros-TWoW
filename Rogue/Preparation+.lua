-=Preparation+=-


/script local function GS(spell) local ix,spellName;for ix=1,200 do spellName=GetSpellName(ix,"spell") if spellName==nil then return false;else if spellName==spell then if GetSpellCooldown(ix,"spell")==0 then return true; else return false; end;end;end;end;end;if GS("Sprint") then CastSpellByName("Sprint");else CastSpellByName("Preparation");end; 
-=-
/script 
local function GS(spell) 
	local ix,spellName;
	for ix=1,200 do 
		spellName=GetSpellName(ix,"spell") 
		if spellName==nil then return false;
		else 
			if spellName==spell then 
				if GetSpellCooldown(ix,"spell")==0 then return true; else return false; end;
			end;
		end;
	end;
end;
if GS("Sprint") then CastSpellByName("Sprint");
else 
	CastSpellByName("Preparation");
end; 