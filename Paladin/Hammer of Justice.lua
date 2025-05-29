-=Hammer of Justice=-

/script local function GotSpell(spell,rank) local ix,spellName,spellRank;for ix=1,200 do spellName,spellRank=GetSpellName(ix,"spell") if spellName==nil then return false;else if spellName==spell and (spellRank==rank or rank==nil) then if GetSpellCooldown(ix,"spell")==0 then return true; else return false; end;end;end;end;end;if UnitMana("player")>89 and GotSpell("Hammer of Justice","Rank 4") then CastSpellByName("Hammer of Justice(Rank 4)");else if UnitMana("player")>69 and GotSpell("Hammer of Justice","Rank 3") then CastSpellByName("Hammer of Justice(Rank 3)");else if UnitMana("player")>49 and GotSpell("Hammer of Justice","Rank 2") then CastSpellByName("Hammer of Justice(Rank 2)");else if UnitMana("player")>35 and GotSpell("Hammer of Justice","Rank 1") then CastSpellByName("Hammer of Justice(Rank 1)");else CastSpellByName("Hammer of Justice(Rank 1)");end;end;end;end;

/script 
local function GotSpell(spell,rank) 
	local ix,spellName,spellRank;
	for ix=1,200 do 
		spellName,spellRank=GetSpellName(ix,"spell") 
		if spellName==nil then return false;
		else 
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if GetSpellCooldown(ix,"spell")==0 then return true; else return false; end;
			end;
		end;
	end;
end;
if UnitMana("player")>89 and GotSpell("Hammer of Justice","Rank 4") then CastSpellByName("Hammer of Justice(Rank 4)");
else 
	if UnitMana("player")>69 and GotSpell("Hammer of Justice","Rank 3") then CastSpellByName("Hammer of Justice(Rank 3)");
	else 
		if UnitMana("player")>49 and GotSpell("Hammer of Justice","Rank 2") then CastSpellByName("Hammer of Justice(Rank 2)");
		else 
			if UnitMana("player")>35 and GotSpell("Hammer of Justice","Rank 1") then CastSpellByName("Hammer of Justice(Rank 1)");
			else CastSpellByName("Hammer of Justice(Rank 1)");
			end;
		end;
	end;
end;



-=-

/script local M,P,C,Sp=UnitMana,"player",CastSpellByName,"Hammer of Justice";if M(P)>99 then C(Sp.."(Rank 4)");else if M(P)>74 then C(Sp.."(Rank 3)");else if M(P)>49 then C(Sp.."(Rank 2)");else CastSpellByName("Hammer of Justice(Rank 1)");end;end;end;

/script local M,P,C,Sp=UnitMana,"player",CastSpellByName,"Hammer of Justice";
if M(P)>99 then C(Sp.."(Rank 4)");
else 
	if M(P)>74 then C(Sp.."(Rank 3)");
	else 
		if M(P)>49 then C(Sp.."(Rank 2)");
		else 
			CastSpellByName("Hammer of Justice(Rank 1)");
		end;
	end;
end;