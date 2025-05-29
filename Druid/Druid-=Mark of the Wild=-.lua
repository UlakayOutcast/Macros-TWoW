-=Mark of the Wild=-

/script local UL=UnitLevel;local UT; if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;if UL("player")>59 and UL(UT)>49 then CastSpellByName("Mark of the Wild(Rank 7)");else if UL("player")>49 and UL(UT)>39 then CastSpellByName("Mark of the Wild(Rank 6)");else if UL("player")>39 and UL(UT)>29 then CastSpellByName("Mark of the Wild(Rank 5)");else if UL("player")>29 and UL(UT)>19 then CastSpellByName("Mark of the Wild(Rank 4)");else if UL("player")>19 and UL(UT)>9 then CastSpellByName("Mark of the Wild(Rank 3)");else if UL("player")>9 and UL(UT)>0 then CastSpellByName("Mark of the Wild(Rank 2)");else CastSpellByName("Mark of the Wild(Rank 1)");end;end;end;end;end;end;
--
/script local UL=UnitLevel;local UT; 
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";
else UT="target";end;
if UL("player")>59 and UL(UT)>49 then CastSpellByName("Mark of the Wild(Rank 7)");
else 
	if UL("player")>49 and UL(UT)>39 then CastSpellByName("Mark of the Wild(Rank 6)");
	else 
		if UL("player")>39 and UL(UT)>29 then CastSpellByName("Mark of the Wild(Rank 5)");
		else 
			if UL("player")>29 and UL(UT)>19 then CastSpellByName("Mark of the Wild(Rank 4)");
			else 
				if UL("player")>19 and UL(UT)>9 then CastSpellByName("Mark of the Wild(Rank 3)");
				else 
					if UL("player")>9 and UL(UT)>0 then CastSpellByName("Mark of the Wild(Rank 2)");
					else 
						CastSpellByName("Mark of the Wild(Rank 1)");
					end;
				end;
			end;
		end;
	end;
end;