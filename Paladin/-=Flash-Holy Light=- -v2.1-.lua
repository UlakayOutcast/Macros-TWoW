-=Flash-Holy Light=- Rank и тип в зависимости от уровня играка, его маны и отсутствующего здоровья цели.
С зажатым Alt используется "Divine Favor".
Для высокого уровня персонажа(34+).

/script local UL=UnitLevel;local UM=UnitMana;local UT,AH;local SW=1;local NS="Holy Light";if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);while(SW>0) do if IsAltKeyDown()==nil or SW==2 then if UnitHealth(UT)<(UnitHealthMax(UT)*0.1) and UL("player")>19 then if UL("player")>57 and UM("player")>139 and AH>384 then NS="Flash of Light(Rank 6)";else if UL("player")>49 and UM("player")>114 and AH>300 then NS="Flash of Light(Rank 5)";else if UL("player")>41 and UM("player")>89 and AH>222 then NS="Flash of Light(Rank 4)";else if UL("player")>33 and UM("player")>69 and AH>164 then NS="Flash of Light(Rank 3)";else if UL("player")>25 and UM("player")>49 and AH>111 then NS="Flash of Light(Rank 2)";else if UL("player")>19 and UM("player")>34 and AH>73 then NS="Flash of Light(Rank 1)";else SW=0;end;end;end;end;end;end;else if UL("player")>60 and UM("player")>659 and AH>1771 then NS="Holy Light(Rank 9)";else if UL("player")>53 and UM("player")>579 and AH>1389 then NS="Holy Light(Rank 8)";else if UL("player")>45 and UM("player")>464 and AH>1054 then NS="Holy Light(Rank 7)";else if UL("player")>37 and UM("player")>364 and AH>781 then NS="Holy Light(Rank 6)";else if UL("player")>29 and UM("player")>274 and AH>554 then NS="Holy Light(Rank 5)";else if UL("player")>57 and UM("player")>139 and AH>384 then NS="Flash of Light(Rank 6)";else if UL("player")>49 and UM("player")>114 and AH>300 then NS="Flash of Light(Rank 5)";else if UL("player")>21 and UM("player")>189 and AH>357 then NS="Holy Light(Rank 4)";else if UL("player")>41 and UM("player")>89 and AH>222 then NS="Flash of Light(Rank 4)";else if UL("player")>33 and UM("player")>69 and AH>164 then NS="Flash of Light(Rank 3)";else if UL("player")>13 and UM("player")>109 and AH>188 then NS="Holy Light(Rank 3)";else if UL("player")>25 and UM("player")>49 and AH>111 then NS="Flash of Light(Rank 2)";else if UL("player")>19 and UM("player")>34 and AH>73 then NS="Flash of Light(Rank 1)";else if UL("player")>5 and UM("player")>59 and AH>91 then NS="Holy Light(Rank 2)";else if UL("player")>0 and UM("player")>34 and AH>48 then NS="Holy Light(Rank 1)";else SW=0;end;end;end;end;end;end;end;end;end;end;end;end;end;end;end;end;if SW>0 then CastSpellByName(NS);else CastSpellByName("Holy Light(Rank 1)");end;SW=0;else CastSpellByName("Divine Favor");SW=2;end;end;

/script local UL=UnitLevel;local UM=UnitMana;local UT,AH;local SW=1;local NS="Holy Light";
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
AH=UnitHealthMax(UT)-UnitHealth(UT);
while(SW>0) do 
	if IsAltKeyDown()==nil or SW==2 then 
		if UnitHealth(UT)<(UnitHealthMax(UT)*0.1) and UL("player")>19 then 
			if UL("player")>57 and UM("player")>139 and AH>384 then NS="Flash of Light(Rank 6)";
			else 
				if UL("player")>49 and UM("player")>114 and AH>300 then NS="Flash of Light(Rank 5)";
				else 
					if UL("player")>41 and UM("player")>89 and AH>222 then NS="Flash of Light(Rank 4)";
					else 
						if UL("player")>33 and UM("player")>69 and AH>164 then NS="Flash of Light(Rank 3)";
						else 
							if UL("player")>25 and UM("player")>49 and AH>111 then NS="Flash of Light(Rank 2)";
							else 
								if UL("player")>19 and UM("player")>34 and AH>73 then NS="Flash of Light(Rank 1)";
								else 
									SW=0;
								end;
							end;
						end;
					end;
				end;
			end;
		else 
			if UL("player")>60 and UM("player")>659 and AH>1771 then NS="Holy Light(Rank 9)";
			else 
				if UL("player")>53 and UM("player")>579 and AH>1389 then NS="Holy Light(Rank 8)";
				else 
					if UL("player")>45 and UM("player")>464 and AH>1054 then NS="Holy Light(Rank 7)";
					else 
						if UL("player")>37 and UM("player")>364 and AH>781 then NS="Holy Light(Rank 6)";
						else 
							if UL("player")>29 and UM("player")>274 and AH>554 then NS="Holy Light(Rank 5)";
							else 
								if UL("player")>57 and UM("player")>139 and AH>384 then NS="Flash of Light(Rank 6)";
								else 
									if UL("player")>49 and UM("player")>114 and AH>300 then NS="Flash of Light(Rank 5)";
									else 
										if UL("player")>21 and UM("player")>189 and AH>357 then NS="Holy Light(Rank 4)";
										else 
											if UL("player")>41 and UM("player")>89 and AH>222 then NS="Flash of Light(Rank 4)";
											else 
												if UL("player")>33 and UM("player")>69 and AH>164 then NS="Flash of Light(Rank 3)";
												else 
													if UL("player")>13 and UM("player")>109 and AH>188 then NS="Holy Light(Rank 3)";
													else 
														if UL("player")>25 and UM("player")>49 and AH>111 then NS="Flash of Light(Rank 2)";
														else 
															if UL("player")>19 and UM("player")>34 and AH>73 then NS="Flash of Light(Rank 1)";
															else 
																if UL("player")>5 and UM("player")>59 and AH>91 then NS="Holy Light(Rank 2)";
																else 
																	if UL("player")>0 and UM("player")>34 and AH>48 then NS="Holy Light(Rank 1)";
																	else 
																		SW=0;
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
		if SW>0 then CastSpellByName(NS);else CastSpellByName("Holy Light(Rank 1)");end;
		SW=0;
	else 
		CastSpellByName("Divine Favor");
		SW=2;
	end;
end;