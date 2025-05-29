-=Thorns=-
/script local UL=UnitLevel; local UT; if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;if UL("player")>53 and UL(UT)>43 then CastSpellByName("Thorns(Rank 6)");else if UL("player")>43 and UL(UT)>33 then CastSpellByName("Thorns(Rank 5)");else if UL("player")>33 and UL(UT)>23 then CastSpellByName("Thorns(Rank 4)");else if UL("player")>23 and UL(UT)>13 then CastSpellByName("Thorns(Rank 3)");else if UL("player")>13 and UL(UT)>5 then CastSpellByName("Thorns(Rank 2)");else if UL("player")>5 and UL(UT)>0 then CastSpellByName("Thorns(Rank 1)");end;end;end;end;end;end;
--
/script local UL=UnitLevel; local UT; 
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
if UL("player")>53 and UL(UT)>43 then CastSpellByName("Thorns(Rank 6)");
else 
	if UL("player")>43 and UL(UT)>33 then CastSpellByName("Thorns(Rank 5)");
	else 
		if UL("player")>33 and UL(UT)>23 then CastSpellByName("Thorns(Rank 4)");
		else 
			if UL("player")>23 and UL(UT)>13 then CastSpellByName("Thorns(Rank 3)");
			else 
				if UL("player")>13 and UL(UT)>5 then CastSpellByName("Thorns(Rank 2)");
				else 
					if UL("player")>5 and UL(UT)>0 then CastSpellByName("Thorns(Rank 1)");
					end;
				end;
			end;
		end;
	end;
end;