-=Flash of Light=- SuperMacro. Rank в зависимости от уровня играка и его маны.
С зажатым Alt используется "Divine Favor"

/script local UL=UnitLevel;local UM=UnitMana;local SW=1;while(SW>0) do if IsAltKeyDown()==nil or SW==2 then if UL("player")>57 and UM("player")>139 then CastSpellByName("Flash of Light(Rank 6)");else if UL("player")>49 and UM("player")>114 then CastSpellByName("Flash of Light(Rank 5)");else if UL("player")>41 and UM("player")>89 then CastSpellByName("Flash of Light(Rank 4)");else if UL("player")>33 and UM("player")>69 then CastSpellByName("Flash of Light(Rank 3)");else if UL("player")>25 and UM("player")>49 then CastSpellByName("Flash of Light(Rank 2)");else if UL("player")>19 and UM("player")>34 then CastSpellByName("Flash of Light(Rank 1)");end;end;end;end;end;end;SW=0;else CastSpellByName("Divine Favor");SW=2;end;end;

/script local UL=UnitLevel;local UM=UnitMana;local SW=1;
while(SW>0) do 
	if IsAltKeyDown()==nil or SW==2 then 
		if UL("player")>57 and UM("player")>139 then CastSpellByName("Flash of Light(Rank 6)");
		else 
			if UL("player")>49 and UM("player")>114 then CastSpellByName("Flash of Light(Rank 5)");
			else 
				if UL("player")>41 and UM("player")>89 then CastSpellByName("Flash of Light(Rank 4)");
				else 
					if UL("player")>33 and UM("player")>69 then CastSpellByName("Flash of Light(Rank 3)");
					else 
						if UL("player")>25 and UM("player")>49 then CastSpellByName("Flash of Light(Rank 2)");
						else 
							if UL("player")>19 and UM("player")>34 then CastSpellByName("Flash of Light(Rank 1)");
							end;
						end;
					end;
				end;
			end;
		end;
		SW=0;
	else 
		CastSpellByName("Divine Favor");SW=2;
	end;
end;



-=Flash of Light=- Rank в зависимости от уровня играка, его маны и отсутствующего здоровья цели.
С зажатым Alt используется "Divine Favor"

/script local UL=UnitLevel;local UM=UnitMana;local UT,AH;local SW=1;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);while(SW>0) do if IsAltKeyDown()==nil or SW==2 then if UL("player")>57 and UM("player")>139 and AH>384 then CastSpellByName("Flash of Light(Rank 6)");else if UL("player")>49 and UM("player")>114 and AH>300 then CastSpellByName("Flash of Light(Rank 5)");else if UL("player")>41 and UM("player")>89 and AH>222 then CastSpellByName("Flash of Light(Rank 4)");else if UL("player")>33 and UM("player")>69 and AH>164 then CastSpellByName("Flash of Light(Rank 3)");else if UL("player")>25 and UM("player")>49 and AH>111 then CastSpellByName("Flash of Light(Rank 2)");else if UL("player")>19 and UM("player")>34 and AH>73 then CastSpellByName("Flash of Light(Rank 1)");end;end;end;end;end;end;SW=0;else CastSpellByName("Divine Favor");SW=2;end;end;

/script local UL=UnitLevel;local UM=UnitMana;local UT,AH;local SW=1;
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
AH=UnitHealthMax(UT)-UnitHealth(UT);
while(SW>0) do 
	if IsAltKeyDown()==nil or SW==2 then 
		if UL("player")>57 and UM("player")>139 and AH>384 then CastSpellByName("Flash of Light(Rank 6)");
		else 
			if UL("player")>49 and UM("player")>114 and AH>300 then CastSpellByName("Flash of Light(Rank 5)");
			else 
				if UL("player")>41 and UM("player")>89 and AH>222 then CastSpellByName("Flash of Light(Rank 4)");
				else 
					if UL("player")>33 and UM("player")>69 and AH>164 then CastSpellByName("Flash of Light(Rank 3)");
					else 
						if UL("player")>25 and UM("player")>49 and AH>111 then CastSpellByName("Flash of Light(Rank 2)");
						else 
							if UL("player")>19 and UM("player")>34 and AH>73 then CastSpellByName("Flash of Light(Rank 1)");
							end;
						end;
					end;
				end;
			end;
		end;
		SW=0;
	else 
		CastSpellByName("Divine Favor");SW=2;
	end;
end;