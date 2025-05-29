-=Rejuvenation=- SuperMacro. Rank в зависимости от уровня играка, его маны и уровня цели.
/script local UL=UnitLevel;local UM=UnitMana;local UT;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;if UL("player")>59 and UL(UT)>57 and (UM("player")>360 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 11)");else if UL("player")>57 and UL(UT)>51 and (UM("player")>335 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 10)");else if UL("player")>51 and UL(UT)>45 and (UM("player")>280 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 9)");else if UL("player")>45 and UL(UT)>39 and (UM("player")>235 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 8)");else if UL("player")>39 and UL(UT)>33 and (UM("player")>195 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 7)");else if UL("player")>33 and UL(UT)>27 and (UM("player")>160 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 6)");else if UL("player")>27 and UL(UT)>21 and (UM("player")>135 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 5)");else if UL("player")>21 and UL(UT)>15 and (UM("player")>105 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 4)");else if UL("player")>15 and UL(UT)>9 and (UM("player")>75 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 3)");else if UL("player")>9 and UL(UT)>3 and (UM("player")>40 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 2)");else if UL("player")>3 and UL(UT)>0 and (UM("player")>25 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 1)");end;end;end;end;end;end;end;end;end;end;end;
-=-
/script local UL=UnitLevel;local UM=UnitMana;local UT;
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
if UL("player")>59 and UL(UT)>57 and (UM("player")>360 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 11)");
else 
	if UL("player")>57 and UL(UT)>51 and (UM("player")>335 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 10)");
	else 
		if UL("player")>51 and UL(UT)>45 and (UM("player")>280 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 9)");
		else 
			if UL("player")>45 and UL(UT)>39 and (UM("player")>235 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 8)");
			else 
				if UL("player")>39 and UL(UT)>33 and (UM("player")>195 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 7)");
				else 
					if UL("player")>33 and UL(UT)>27 and (UM("player")>160 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 6)");
					else 
						if UL("player")>27 and UL(UT)>21 and (UM("player")>135 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 5)");
						else 
							if UL("player")>21 and UL(UT)>15 and (UM("player")>105 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 4)");
							else 
								if UL("player")>15 and UL(UT)>9 and (UM("player")>75 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 3)");
								else 
									if UL("player")>9 and UL(UT)>3 and (UM("player")>40 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 2)");
									else 
										if UL("player")>3 and UL(UT)>0 and (UM("player")>25 or buffed("Clearcasting")=="buff") then CastSpellByName("Rejuvenation(Rank 1)");
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end;


-=Rejuvenation=- Rank в зависимости от уровня играка, его маны, уровня цели и отсутствующего здоровья цели.
/script local UL=UnitLevel;local UM=UnitMana;local UT,AH;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);if UL("player")>59 and UL(UT)>57 and (UM("player")>360 or buffed("Clearcasting")=="buff") and AH>888 then CastSpellByName("Rejuvenation(Rank 11)");else if UL("player")>57 and UL(UT)>51 and (UM("player")>335 or buffed("Clearcasting")=="buff") and AH>756 then CastSpellByName("Rejuvenation(Rank 10)");else if UL("player")>51 and UL(UT)>45 and (UM("player")>280 or buffed("Clearcasting")=="buff") and AH>608 then CastSpellByName("Rejuvenation(Rank 9)");else if UL("player")>45 and UL(UT)>39 and (UM("player")>235 or buffed("Clearcasting")=="buff") and AH>488 then CastSpellByName("Rejuvenation(Rank 8)");else if UL("player")>39 and UL(UT)>33 and (UM("player")>195 or buffed("Clearcasting")=="buff") and AH>388 then CastSpellByName("Rejuvenation(Rank 7)");else if UL("player")>33 and UL(UT)>27 and (UM("player")>160 or buffed("Clearcasting")=="buff") and AH>304 then CastSpellByName("Rejuvenation(Rank 6)");else if UL("player")>27 and UL(UT)>21 and (UM("player")>135 or buffed("Clearcasting")=="buff") and AH>244 then CastSpellByName("Rejuvenation(Rank 5)");else if UL("player")>21 and UL(UT)>15 and (UM("player")>105 or buffed("Clearcasting")=="buff") and AH>180 then CastSpellByName("Rejuvenation(Rank 4)");else if UL("player")>15 and UL(UT)>9 and (UM("player")>75 or buffed("Clearcasting")=="buff") and AH>116 then CastSpellByName("Rejuvenation(Rank 3)");else if UL("player")>9 and UL(UT)>3 and (UM("player")>40 or buffed("Clearcasting")=="buff") and AH>56 then CastSpellByName("Rejuvenation(Rank 2)");else if UL("player")>3 and UL(UT)>0 and (UM("player")>25 or buffed("Clearcasting")=="buff") and AH>32 then CastSpellByName("Rejuvenation(Rank 1)");end;end;end;end;end;end;end;end;end;end;end;
-=-
/script local UL=UnitLevel;local UM=UnitMana;local UT,AH;
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
AH=UnitHealthMax(UT)-UnitHealth(UT);
if UL("player")>59 and UL(UT)>57 and (UM("player")>360 or buffed("Clearcasting")=="buff") and AH>888 then CastSpellByName("Rejuvenation(Rank 11)");
else 
	if UL("player")>57 and UL(UT)>51 and (UM("player")>335 or buffed("Clearcasting")=="buff") and AH>756 then CastSpellByName("Rejuvenation(Rank 10)");
	else 
		if UL("player")>51 and UL(UT)>45 and (UM("player")>280 or buffed("Clearcasting")=="buff") and AH>608 then CastSpellByName("Rejuvenation(Rank 9)");
		else 
			if UL("player")>45 and UL(UT)>39 and (UM("player")>235 or buffed("Clearcasting")=="buff") and AH>488 then CastSpellByName("Rejuvenation(Rank 8)");
			else 
				if UL("player")>39 and UL(UT)>33 and (UM("player")>195 or buffed("Clearcasting")=="buff") and AH>388 then CastSpellByName("Rejuvenation(Rank 7)");
				else 
					if UL("player")>33 and UL(UT)>27 and (UM("player")>160 or buffed("Clearcasting")=="buff") and AH>304 then CastSpellByName("Rejuvenation(Rank 6)");
					else 
						if UL("player")>27 and UL(UT)>21 and (UM("player")>135 or buffed("Clearcasting")=="buff") and AH>244 then CastSpellByName("Rejuvenation(Rank 5)");
						else 
							if UL("player")>21 and UL(UT)>15 and (UM("player")>105 or buffed("Clearcasting")=="buff") and AH>180 then CastSpellByName("Rejuvenation(Rank 4)");
							else 
								if UL("player")>15 and UL(UT)>9 and (UM("player")>75 or buffed("Clearcasting")=="buff") and AH>116 then CastSpellByName("Rejuvenation(Rank 3)");
								else 
									if UL("player")>9 and UL(UT)>3 and (UM("player")>40 or buffed("Clearcasting")=="buff") and AH>56 then CastSpellByName("Rejuvenation(Rank 2)");
									else 
										if UL("player")>3 and UL(UT)>0 and (UM("player")>25 or buffed("Clearcasting")=="buff") and AH>32 then CastSpellByName("Rejuvenation(Rank 1)");
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end;