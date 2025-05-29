-=Holy Nova+Sun's Embrace=-
/script local function ActSpell(spell,rank,sw) local ix=192;while(ix>0) do if ix==0 then return nil;else local spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if rank==nil then rank=spellRank; end;if sw==nil then return GetSpellCooldown(ix,"spell"); end;if sw==0 then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName(spellName.."("..rank..")",nil); return ix; end;end;if sw==1 then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName(spellName.."("..rank..")",1); return ix; end;end;end;ix=ix-1;end;end;end;if ActSpell("Sun's Embrace")>0 then CastSpellByName("Holy Nova",0);else CastSpellByName("Sun's Embrace");end;
--
/script 
local function ActSpell(spell,rank,sw) 
	local ix=192;
	while(ix>0) do 
		if ix==0 then return nil;
		else 
			local spellName,spellRank=GetSpellName(ix,"spell");
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if rank==nil then rank=spellRank; end;
				if sw==nil then return GetSpellCooldown(ix,"spell"); end;
				if sw==0 then 
					if GetSpellCooldown(ix,"spell")==0 then CastSpellByName(spellName.."("..rank..")",nil); return ix; end;
				end;
				if sw==1 then 
					if GetSpellCooldown(ix,"spell")==0 then CastSpellByName(spellName.."("..rank..")",1); return ix; end;
				end;
			end;
			ix=ix-1;
		end;
	end;
end;
if ActSpell("Sun's Embrace")>0 then 
	CastSpellByName("Holy Nova",0);
else 
	CastSpellByName("Sun's Embrace");
end;