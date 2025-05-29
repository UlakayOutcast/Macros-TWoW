-=Holy Light=- SuperMacro. Rank в зависимости от уровня играка и его маны. С зажатым Alt используется "Divine Favor"

/script local UL=UnitLevel;local UM=UnitMana;local SW=1;while(SW>0) do if IsAltKeyDown()==nil or SW==2 then if UL("player")>60 and UM("player")>659 then CastSpellByName("Holy Light(Rank 9)");else if UL("player")>53 and UM("player")>579 then CastSpellByName("Holy Light(Rank 8)");else if UL("player")>45 and UM("player")>464 then CastSpellByName("Holy Light(Rank 7)");else if UL("player")>37 and UM("player")>364 then CastSpellByName("Holy Light(Rank 6)");else if UL("player")>29 and UM("player")>274 then CastSpellByName("Holy Light(Rank 5)");else if UL("player")>21 and UM("player")>189 then CastSpellByName("Holy Light(Rank 4)");else if UL("player")>13 and UM("player")>109 then CastSpellByName("Holy Light(Rank 3)");else if UL("player")>5 and UM("player")>59 then CastSpellByName("Holy Light(Rank 2)");else if UL("player")>0 and UM("player")>34 then CastSpellByName("Holy Light(Rank 1)");end;end;end;end;end;end;end;end;end;SW=0;else CastSpellByName("Divine Favor");SW=2;end;end;

/script local UL=UnitLevel;local UM=UnitMana;local SW=1;
while(SW>0) do 
	if IsAltKeyDown()==nil or SW==2 then 
		if UL("player")>60 and UM("player")>659 then CastSpellByName("Holy Light(Rank 9)");
		else 
			if UL("player")>53 and UM("player")>579 then CastSpellByName("Holy Light(Rank 8)");
			else 
				if UL("player")>45 and UM("player")>464 then CastSpellByName("Holy Light(Rank 7)");
				else 
					if UL("player")>37 and UM("player")>364 then CastSpellByName("Holy Light(Rank 6)");
					else 
						if UL("player")>29 and UM("player")>274 then CastSpellByName("Holy Light(Rank 5)");
						else 
							if UL("player")>21 and UM("player")>189 then CastSpellByName("Holy Light(Rank 4)");
							else 
								if UL("player")>13 and UM("player")>109 then CastSpellByName("Holy Light(Rank 3)");
								else 
									if UL("player")>5 and UM("player")>59 then CastSpellByName("Holy Light(Rank 2)");
									else 
										if UL("player")>0 and UM("player")>34 then CastSpellByName("Holy Light(Rank 1)");
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
		CastSpellByName("Divine Favor");SW=2;
	end;
end;



-=Holy Light=- Rank в зависимости от уровня играка, его маны и отсутствующего здоровья цели. С зажатым Alt используется "Divine Favor"

/script local UL=UnitLevel;local UM=UnitMana;local UT,AH;local SW=1;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);while(SW>0) do if IsAltKeyDown()==nil or SW==2 then if UL("player")>60 and UM("player")>659 and AH>1589 then CastSpellByName("Holy Light(Rank 9)");else if UL("player")>53 and UM("player")>579 and AH>1272 then CastSpellByName("Holy Light(Rank 8)");else if UL("player")>45 and UM("player")>464 and AH>967 then CastSpellByName("Holy Light(Rank 7)");else if UL("player")>37 and UM("player")>364 and AH>717 then CastSpellByName("Holy Light(Rank 6)");else if UL("player")>29 and UM("player")>274 and AH>506 then CastSpellByName("Holy Light(Rank 5)");else if UL("player")>21 and UM("player")>189 and AH>322 then CastSpellByName("Holy Light(Rank 4)");else if UL("player")>13 and UM("player")>109 and AH>167 then CastSpellByName("Holy Light(Rank 3)");else if UL("player")>5 and UM("player")>59 and AH>81 then CastSpellByName("Holy Light(Rank 2)");else if UL("player")>0 and UM("player")>34 and AH>42 then CastSpellByName("Holy Light(Rank 1)");end;end;end;end;end;end;end;end;end;SW=0;else CastSpellByName("Divine Favor");SW=2;end;end;

/script local UL=UnitLevel;local UM=UnitMana;local UT,AH;local SW=1;
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
AH=UnitHealthMax(UT)-UnitHealth(UT);
while(SW>0) do 
	if IsAltKeyDown()==nil or SW==2 then 
		if UL("player")>60 and UM("player")>659 and AH>1589 then CastSpellByName("Holy Light(Rank 9)");
		else 
			if UL("player")>53 and UM("player")>579 and AH>1246 then CastSpellByName("Holy Light(Rank 8)");
			else 
				if UL("player")>45 and UM("player")>464 and AH>945 then CastSpellByName("Holy Light(Rank 7)");
				else 
					if UL("player")>37 and UM("player")>364 and AH>698 then CastSpellByName("Holy Light(Rank 6)");
					else 
						if UL("player")>29 and UM("player")>274 and AH>491 then CastSpellByName("Holy Light(Rank 5)");
						else 
							if UL("player")>21 and UM("player")>189 and AH>310 then CastSpellByName("Holy Light(Rank 4)");
							else 
								if UL("player")>13 and UM("player")>109 and AH>159 then CastSpellByName("Holy Light(Rank 3)");
								else 
									if UL("player")>5 and UM("player")>59 and AH>76 then CastSpellByName("Holy Light(Rank 2)");
									else 
										if UL("player")>0 and UM("player")>34 and AH>39 then CastSpellByName("Holy Light(Rank 1)");
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
		CastSpellByName("Divine Favor");SW=2;
	end;
end;