/script local SW,C,cnt,tex=1;while(SW>0) do if IsAltKeyDown() and SW==1 then for C=1,199 do if GetSpellName(C,"spell")=="Nature's Swiftness"then if GetSpellCooldown(C,"spell")==0 then CastSpellByName("Nature's Swiftness");SW=0;else C=199;end;if C==199 then SW=2;end;end;end;else CastSpellByName("Chain Lightning(Rank 3)");SW=0;end;end;

/script local SW,C,cnt,tex=1;
while(SW>0) do 
	if IsAltKeyDown() and SW==1 then 
		for C=1,199 do 
			if GetSpellName(C,"spell")=="Nature's Swiftness"then 
				if GetSpellCooldown(C,"spell")==0 then 
					CastSpellByName("Nature's Swiftness");
					SW=0;
				else 
					C=199;
				end;
			if C==199 then SW=2;end;
			end;
		end;
	else 
		CastSpellByName("Chain Lightning(Rank 3)");SW=0;
	end;
end;

-=-

/script local SW,C,cnt,tex=1;while(SW>0) do if IsAltKeyDown()==nil or SW==2 then CastSpellByName("Chain Lightning(Rank 3)");SW=0;else for C=1,199 do if GetSpellName(C,"spell")=="Nature's Swiftness"then if GetSpellCooldown(C,"spell")==0 then CastSpellByName("Nature's Swiftness");SW=0;else C=199;end;if C==199 then SW=2;end;end;end;end;end;

/script local SW,C,cnt,tex=1;
while(SW>0) do 
	if IsAltKeyDown()==nil or SW==2 then CastSpellByName("Chain Lightning(Rank 3)");SW=0;
	else 
		for C=1,199 do 
			if GetSpellName(C,"spell")=="Nature's Swiftness"then 
				if GetSpellCooldown(C,"spell")==0 then 
					CastSpellByName("Nature's Swiftness");
					SW=0;
				else 
					C=199;
				end;
			if C==199 then SW=2;end;
			end;
		end;
	end;
end;