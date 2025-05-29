-=Regrowth=- SuperMacro. Rank в зависимости от уровня играка, его маны и уровня цели. С зажатым Alt используется "Nature's Swiftness"
/script local UL=UnitLevel;local UM=UnitMana;local UT;local SW=1;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;while(SW>0) do if IsAltKeyDown()==nil or SW==2 then if UL("player")>59 and UL(UT)>53 and (UM("player")>880 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 9)");else if UL("player")>53 and UL(UT)>47 and (UM("player")>740 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 8)");else if UL("player")>47 and UL(UT)>41 and (UM("player")>615 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 7)");else if UL("player")>41 and UL(UT)>35 and (UM("player")>510 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 6)");else if UL("player")>35 and UL(UT)>29 and (UM("player")>420 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 5)");else if UL("player")>29 and UL(UT)>23 and (UM("player")>350 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 4)");else if UL("player")>23 and UL(UT)>17 and (UM("player")>280 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 3)");else if UL("player")>17 and UL(UT)>11 and (UM("player")>205 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 2)");else if UL("player")>11 and UL(UT)>0 and (UM("player")>120 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 1)");end;end;end;end;end;end;end;end;end;SW=0;else CastSpellByName("Nature's Swiftness");SW=2;end;end;
-=-
/script local UL=UnitLevel;local UM=UnitMana;local UT;local SW=1;
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
while(SW>0) do 
	if IsAltKeyDown()==nil or SW==2 then 
		if UL("player")>59 and UL(UT)>53 and (UM("player")>880 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 9)");
		else 
			if UL("player")>53 and UL(UT)>47 and (UM("player")>740 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 8)");
			else 
				if UL("player")>47 and UL(UT)>41 and (UM("player")>615 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 7)");
				else 
					if UL("player")>41 and UL(UT)>35 and (UM("player")>510 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 6)");
					else 
						if UL("player")>35 and UL(UT)>29 and (UM("player")>420 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 5)");
						else 
							if UL("player")>29 and UL(UT)>23 and (UM("player")>350 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 4)");
							else 
								if UL("player")>23 and UL(UT)>17 and (UM("player")>280 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 3)");
								else 
									if UL("player")>17 and UL(UT)>11 and (UM("player")>205 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 2)");
									else 
										if UL("player")>11 and UL(UT)>0 and (UM("player")>120 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 1)");
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
		SW=0;
	else 
		CastSpellByName("Nature's Swiftness");SW=2;
	end;
end;


-=Regrowth=- Rank в зависимости от уровня играка, его маны, уровня цели и отсутствующего здоровья цели. С зажатым Alt используется "Nature's Swiftness"
/script local UL=UnitLevel;local UM=UnitMana;local UT,AH;local SW=1;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);while(SW>0) do if IsAltKeyDown()==nil or SW==2 then if UL("player")>59 and UL(UT)>53 and (UM("player")>880 and AH>1003 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 9)");else if UL("player")>53 and UL(UT)>47 and (UM("player")>740 and AH>809 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 8)");else if UL("player")>47 and UL(UT)>41 and (UM("player")>615 and AH>646 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 7)");else if UL("player")>41 and UL(UT)>35 and (UM("player")>510 and AH>511 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 6)");else if UL("player")>35 and UL(UT)>29 and (UM("player")>420 and AH>405 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 5)");else if UL("player")>29 and UL(UT)>23 and (UM("player")>350 and AH>318 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 4)");else if UL("player")>23 and UL(UT)>17 and (UM("player")>280 and AH>240 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 3)");else if UL("player")>17 and UL(UT)>11 and (UM("player")>205 and AH>164 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 2)");else if UL("player")>11 and UL(UT)>0 and (UM("player")>120 and AH>84 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 1)");end;end;end;end;end;end;end;end;end;SW=0;else CastSpellByName("Nature's Swiftness");SW=2;end;end;
-=-
/script local UL=UnitLevel;local UM=UnitMana;local UT,AH;local SW=1;
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
AH=UnitHealthMax(UT)-UnitHealth(UT);
while(SW>0) do 
	if IsAltKeyDown()==nil or SW==2 then 
		if UL("player")>59 and UL(UT)>53 and (UM("player")>880 and AH>1003 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 9)");
		else 
			if UL("player")>53 and UL(UT)>47 and (UM("player")>740 and AH>809 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 8)");
			else 
				if UL("player")>47 and UL(UT)>41 and (UM("player")>615 and AH>646 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 7)");
				else 
					if UL("player")>41 and UL(UT)>35 and (UM("player")>510 and AH>511 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 6)");
					else 
						if UL("player")>35 and UL(UT)>29 and (UM("player")>420 and AH>405 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 5)");
						else 
							if UL("player")>29 and UL(UT)>23 and (UM("player")>350 and AH>318 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 4)");
							else 
								if UL("player")>23 and UL(UT)>17 and (UM("player")>280 and AH>240 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 3)");
								else 
									if UL("player")>17 and UL(UT)>11 and (UM("player")>205 and AH>164 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 2)");
									else 
										if UL("player")>11 and UL(UT)>0 and (UM("player")>120 and AH>84 or buffed("Clearcasting")=="buff") then CastSpellByName("Regrowth(Rank 1)");
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
		SW=0;
	else 
		CastSpellByName("Nature's Swiftness");SW=2;
	end;
end;