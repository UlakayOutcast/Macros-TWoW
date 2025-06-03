-=Arcane Intellect=-
/script local CS=CastSpellByName;local UL=UnitLevel;local UM=UnitMana; local UT; 
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";
else UT="target";end;
if UL("player")>55 and UL(UT)>45 then if UM("player")>1510 then CS("Arcane Intellect(Rank 5)");end;
else 
	if UL("player")>41 and UL(UT)>31 then if UM("player")>945 then CS("Arcane Intellect(Rank 4)");end;
	else 
		if UL("player")>27 and UL(UT)>17 then if UM("player")>520 then CS("Arcane Intellect(Rank 3)");end;
		else 
			if UL("player")>13 and UL(UT)>3 then if UM("player")>185 then CS("Arcane Intellect(Rank 2)");end;
			else 
				if UL("player")>0 and UL(UT)>0 then if UM("player")>60 then CS("Arcane Intellect(Rank 1)");end;
				end;
			end;
		end;
	end;
end;