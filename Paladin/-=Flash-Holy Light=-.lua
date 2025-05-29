-=Flash-Holy Light=- Rank в зависимости от уровня играка, его маны и отсутствующего здоровья цели. Для высокого уровня персонажа(34+). С зажатым Alt используется "Divine Favor"

/script local UL=UnitLevel;local UM=UnitMana;local UT,AH;local SW=1;if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);while(SW>0) do if IsAltKeyDown()==nil or SW==2 then if UnitHealth(UT)<(UnitHealthMax(UT)*0.3) and UL("player")>19 then if UL("player")>57 and UM("player")>139 and AH>343 then CastSpellByName("Flash of Light(Rank 6)");else if UL("player")>49 and UM("player")>114 and AH>267 then CastSpellByName("Flash of Light(Rank 5)");else if UL("player")>41 and UM("player")>89 and AH>197 then CastSpellByName("Flash of Light(Rank 4)");else if UL("player")>33 and UM("player")>69 and AH>145 then CastSpellByName("Flash of Light(Rank 3)");else if UL("player")>25 and UM("player")>49 and AH>96 then CastSpellByName("Flash of Light(Rank 2)");else if UL("player")>19 and UM("player")>34 and AH>62 then CastSpellByName("Flash of Light(Rank 1)");end;end;end;end;end;end;else if UL("player")>60 and UM("player")>659 and AH>1589 then CastSpellByName("Holy Light(Rank 9)");else if UL("player")>53 and UM("player")>579 and AH>1246 then CastSpellByName("Holy Light(Rank 8)");else if UL("player")>45 and UM("player")>464 and AH>945 then CastSpellByName("Holy Light(Rank 7)");else if UL("player")>37 and UM("player")>364 and AH>698 then CastSpellByName("Holy Light(Rank 6)");else if UL("player")>29 and UM("player")>274 and AH>491 then CastSpellByName("Holy Light(Rank 5)");else if UL("player")>57 and UM("player")>139 and AH>343 then CastSpellByName("Flash of Light(Rank 6)");else if UL("player")>49 and UM("player")>114 and AH>267 then CastSpellByName("Flash of Light(Rank 5)");else if UL("player")>21 and UM("player")>189 and AH>322 then CastSpellByName("Holy Light(Rank 4)");else if UL("player")>41 and UM("player")>89 and AH>197 then CastSpellByName("Flash of Light(Rank 4)");else if UL("player")>33 and UM("player")>69 and AH>145 then CastSpellByName("Flash of Light(Rank 3)");else if UL("player")>13 and UM("player")>109 and AH>159 then CastSpellByName("Holy Light(Rank 3)");else if UL("player")>25 and UM("player")>49 and AH>96 then CastSpellByName("Flash of Light(Rank 2)");else if UL("player")>19 and UM("player")>34 and AH>62 then CastSpellByName("Flash of Light(Rank 1)");else if UL("player")>5 and UM("player")>59 and AH>76 then CastSpellByName("Holy Light(Rank 2)");else if UL("player")>0 and UM("player")>34 and AH>39 then CastSpellByName("Holy Light(Rank 1)");end;end;end;end;end;end;end;end;end;end;end;end;end;end;end;end;SW=0;else CastSpellByName("Divine Favor");SW=2;end;end;

/script local UL=UnitLevel;local UM=UnitMana;local UT,AH;local SW=1;
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
AH=UnitHealthMax(UT)-UnitHealth(UT);
while(SW>0) do 
	if IsAltKeyDown()==nil or SW==2 then 
		if UnitHealth(UT)<(UnitHealthMax(UT)*0.3) and UL("player")>19 then 
			if UL("player")>57 and UM("player")>139 and AH>343 then CastSpellByName("Flash of Light(Rank 6)");
			else 
				if UL("player")>49 and UM("player")>114 and AH>267 then CastSpellByName("Flash of Light(Rank 5)");
				else 
					if UL("player")>41 and UM("player")>89 and AH>197 then CastSpellByName("Flash of Light(Rank 4)");
					else 
						if UL("player")>33 and UM("player")>69 and AH>145 then CastSpellByName("Flash of Light(Rank 3)");
						else 
							if UL("player")>25 and UM("player")>49 and AH>96 then CastSpellByName("Flash of Light(Rank 2)");
							else 
								if UL("player")>19 and UM("player")>34 and AH>62 then CastSpellByName("Flash of Light(Rank 1)");
								end;
							end;
						end;
					end;
				end;
			end;
		else 
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
								if UL("player")>57 and UM("player")>139 and AH>343 then CastSpellByName("Flash of Light(Rank 6)");
								else 
									if UL("player")>49 and UM("player")>114 and AH>267 then CastSpellByName("Flash of Light(Rank 5)");
									else 
										if UL("player")>21 and UM("player")>189 and AH>322 then CastSpellByName("Holy Light(Rank 4)");
										else 
											if UL("player")>41 and UM("player")>89 and AH>197 then CastSpellByName("Flash of Light(Rank 4)");
											else 
												if UL("player")>33 and UM("player")>69 and AH>145 then CastSpellByName("Flash of Light(Rank 3)");
												else 
													if UL("player")>13 and UM("player")>109 and AH>159 then CastSpellByName("Holy Light(Rank 3)");
													else 
														if UL("player")>25 and UM("player")>49 and AH>96 then CastSpellByName("Flash of Light(Rank 2)");
														else 
															if UL("player")>19 and UM("player")>34 and AH>62 then CastSpellByName("Flash of Light(Rank 1)");
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