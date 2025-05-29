-=Healing Touch=- SuperMacro. Rank в зависимости от уровня играка и его маны. С зажатым Alt используется "Nature's Swiftness"
/script local UL=UnitLevel;local UM=UnitMana;local CT;local SW=1;if UL("target")==0 or UnitCanAttack("player","target") then CT="player";else CT="target";end;while(SW>0) do if IsAltKeyDown()==nil or SW==2 then if UL("player")>59 and (UM("player")>800 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 11)");else if UL("player")>55 and (UM("player")>720 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 10)");else if UL("player")>49 and (UM("player")>600 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 9)");else if UL("player")>43 and (UM("player")>495 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 8)");else if UL("player")>37 and (UM("player")>405 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 7)");else if UL("player")>31 and (UM("player")>335 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 6)");else if UL("player")>25 and (UM("player")>270 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 5)");else if UL("player")>19 and (UM("player")>185 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 4)");else if UL("player")>13 and (UM("player")>110 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 3)");else if UL("player")>7 and (UM("player")>55 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 2)");else if UL("player")>0 and (UM("player")>25 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 1)");end;end;end;end;end;end;end;end;end;end;end;SW=0;else CastSpellByName("Nature's Swiftness");SW=2;end;end;
-=-
/script local UL=UnitLevel;local UM=UnitMana;local CT;local SW=1;
if UL("target")==0 or UnitCanAttack("player","target") then CT="player";else CT="target";end;
while(SW>0) do 
	if IsAltKeyDown()==nil or SW==2 then 
		if UL("player")>59 and (UM("player")>800 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 11)");
		else 
			if UL("player")>55 and (UM("player")>720 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 10)");
			else 
				if UL("player")>49 and (UM("player")>600 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 9)");
				else 
					if UL("player")>43 and (UM("player")>495 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 8)");
					else 
						if UL("player")>37 and (UM("player")>405 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 7)");
						else 
							if UL("player")>31 and (UM("player")>335 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 6)");
							else 
								if UL("player")>25 and (UM("player")>270 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 5)");
								else 
									if UL("player")>19 and (UM("player")>185 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 4)");
									else 
										if UL("player")>13 and (UM("player")>110 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 3)");
										else 
											if UL("player")>7 and (UM("player")>55 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 2)");
											else 
												if UL("player")>0 and (UM("player")>25 or buffed("Clearcasting")=="buff") then CastSpellByName("Healing Touch(Rank 1)");
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
		SW=0;
	else 
		CastSpellByName("Nature's Swiftness");SW=2;
	end;
end;


-=Healing Touch=- Rank в зависимости от уровня играка, его маны и отсутствующего здоровья цели. С зажатым Alt используется "Nature's Swiftness"
/script local UL=UnitLevel;local UM=UnitMana;local CT,AH;local SW=1;if UL("target")==0 or UnitCanAttack("player","target") then CT="player";else CT="target";end;AH=UnitHealthMax(CT)-UnitHealth(CT);while(SW>0) do if IsAltKeyDown()==nil or SW==2 then if UL("player")>59 and (UM("player")>800 or buffed("Clearcasting")=="buff") and AH>2267 then CastSpellByName("Healing Touch(Rank 11)");else if UL("player")>55 and (UM("player")>720 or buffed("Clearcasting")=="buff") and AH>1890 then CastSpellByName("Healing Touch(Rank 10)");else if UL("player")>49 and (UM("player")>600 or buffed("Clearcasting")=="buff") and AH>1516 then CastSpellByName("Healing Touch(Rank 9)");else if UL("player")>43 and (UM("player")>495 or buffed("Clearcasting")=="buff") and AH>1199 then CastSpellByName("Healing Touch(Rank 8)");else if UL("player")>37 and (UM("player")>405 or buffed("Clearcasting")=="buff") and AH>936 then CastSpellByName("Healing Touch(Rank 7)");else if UL("player")>31 and (UM("player")>335 or buffed("Clearcasting")=="buff") and AH>742 then CastSpellByName("Healing Touch(Rank 6)");else if UL("player")>25 and (UM("player")>270 or buffed("Clearcasting")=="buff") and AH>572 then CastSpellByName("Healing Touch(Rank 5)");else if UL("player")>19 and (UM("player")>185 or buffed("Clearcasting")=="buff") and AH>363 then CastSpellByName("Healing Touch(Rank 4)");else if UL("player")>13 and (UM("player")>110 or buffed("Clearcasting")=="buff") and AH>195 then CastSpellByName("Healing Touch(Rank 3)");else if UL("player")>7 and (UM("player")>55 or buffed("Clearcasting")=="buff") and AH>88 then CastSpellByName("Healing Touch(Rank 2)");else if UL("player")>0 and (UM("player")>25 or buffed("Clearcasting")=="buff") and AH>37 then CastSpellByName("Healing Touch(Rank 1)");end;end;end;end;end;end;end;end;end;end;end;SW=0;else CastSpellByName("Nature's Swiftness");SW=2;end;end;
-=-
/script local UL=UnitLevel;local UM=UnitMana;local CT,AH;local SW=1;
if UL("target")==0 or UnitCanAttack("player","target") then CT="player";else CT="target";end;
AH=UnitHealthMax(CT)-UnitHealth(CT);
while(SW>0) do 
	if IsAltKeyDown()==nil or SW==2 then 
		if UL("player")>59 and (UM("player")>800 or buffed("Clearcasting")=="buff") and AH>2267 then CastSpellByName("Healing Touch(Rank 11)");
		else 
			if UL("player")>55 and (UM("player")>720 or buffed("Clearcasting")=="buff") and AH>1890 then CastSpellByName("Healing Touch(Rank 10)");
			else 
				if UL("player")>49 and (UM("player")>600 or buffed("Clearcasting")=="buff") and AH>1516 then CastSpellByName("Healing Touch(Rank 9)");
				else 
					if UL("player")>43 and (UM("player")>495 or buffed("Clearcasting")=="buff") and AH>1199 then CastSpellByName("Healing Touch(Rank 8)");
					else 
						if UL("player")>37 and (UM("player")>405 or buffed("Clearcasting")=="buff") and AH>936 then CastSpellByName("Healing Touch(Rank 7)");
						else 
							if UL("player")>31 and (UM("player")>335 or buffed("Clearcasting")=="buff") and AH>742 then CastSpellByName("Healing Touch(Rank 6)");
							else 
								if UL("player")>25 and (UM("player")>270 or buffed("Clearcasting")=="buff") and AH>572 then CastSpellByName("Healing Touch(Rank 5)");
								else 
									if UL("player")>19 and (UM("player")>185 or buffed("Clearcasting")=="buff") and AH>363 then CastSpellByName("Healing Touch(Rank 4)");
									else 
										if UL("player")>13 and (UM("player")>110 or buffed("Clearcasting")=="buff") and AH>195 then CastSpellByName("Healing Touch(Rank 3)");
										else 
											if UL("player")>7 and (UM("player")>55 or buffed("Clearcasting")=="buff") and AH>88 then CastSpellByName("Healing Touch(Rank 2)");
											else 
												if UL("player")>0 and (UM("player")>25 or buffed("Clearcasting")=="buff") and AH>37 then CastSpellByName("Healing Touch(Rank 1)");
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
		SW=0;
	else 
		CastSpellByName("Nature's Swiftness");SW=2;
	end;
end;