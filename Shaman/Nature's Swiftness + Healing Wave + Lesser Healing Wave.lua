-=Nature's Swiftness + Healing Wave + Lesser Healing Wave=- Rank в зависимости от уровня играка, его маны и отсутствующего здоровья цели. С зажатым Alt используется "Nature's Swiftness"
-=-
/script local UL=UnitLevel;local UM=UnitMana;local UT,AH;local SW=1;local NS="Healing Wave";if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);while(SW>0) do if IsAltKeyDown() and SW~=2 then CastSpellByName("Nature's Swiftness");SW=2;else if UnitHealth(UT)<(UnitHealthMax(UT)*0.2) and SW~=2 then if UL("player")>59 and UM("player")>379 and AH>832 then NS="Lesser Healing Wave(Rank 6)";else if UL("player")>52 and UM("player")>304 and AH>631 then NS="Lesser Healing Wave(Rank 5)";else if UL("player")>43 and UM("player")>235 and AH>458 then NS="Lesser Healing Wave(Rank 4)";else if UL("player")>35 and UM("player")>184 and AH>338 then NS="Lesser Healing Wave(Rank 3)";else if UL("player")>27 and UM("player")>144 and AH>247 then NS="Lesser Healing Wave(Rank 2)";else if UL("player")>19 and UM("player")>104 and AH>162 then NS="Lesser Healing Wave(Rank 1)";else if UL("player")>5 and UM("player")>44 and AH>64 then NS="Healing Wave(Rank 2)";else if UL("player")>0 and UM("player")>24 and AH>34 then NS="Healing Wave(Rank 1)";else SW=0;end;end;end;end;end;end;end;end;else if UL("player")>59 and UM("player")>619 and AH>1620 then NS="Healing Wave(Rank 10)";else if UL("player")>55 and UM("player")>559 and AH>1367 then NS="Healing Wave(Rank 9)";else if UL("player")>47 and UM("player")>439 and AH>1017 then NS="Healing Wave(Rank 8)";else if UL("player")>39 and UM("player")>339 and AH>740 then NS="Healing Wave(Rank 7)";else if UL("player")>31 and UM("player")>264 and AH>536 then NS="Healing Wave(Rank 6)";else if UL("player")>23 and UM("player")>199 and AH>376 then NS="Healing Wave(Rank 5)";else if UL("player")>17 and UM("player")>154 and AH>268 then NS="Healing Wave(Rank 4)";else if UL("player")>11 and UM("player")>79 and AH>129 then NS="Healing Wave(Rank 3)";else if UL("player")>5 and UM("player")>44 and AH>64 then NS="Healing Wave(Rank 2)";else if UL("player")>0 and UM("player")>24 and AH>34 then NS="Healing Wave(Rank 1)";else SW=0;end;end;end;end;end;end;end;end;end;end;end;if SW>0 then CastSpellByName(NS);else CastSpellByName("Healing Wave(Rank 1)");end;SW=0;end;end;
-=-
/script local UL=UnitLevel;local UM=UnitMana;local UT,AH;local SW=1;local NS="Healing Wave";
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
AH=UnitHealthMax(UT)-UnitHealth(UT);
while(SW>0) do 
	if IsAltKeyDown() and SW~=2 then 
		CastSpellByName("Nature's Swiftness");
		SW=2;
	else 
		if UnitHealth(UT)<(UnitHealthMax(UT)*0.2) and SW~=2 then 
			if UL("player")>59 and UM("player")>379 and AH>832 then NS="Lesser Healing Wave(Rank 6)";
			else 
				if UL("player")>52 and UM("player")>304 and AH>631 then NS="Lesser Healing Wave(Rank 5)";
				else 
					if UL("player")>43 and UM("player")>235 and AH>458 then NS="Lesser Healing Wave(Rank 4)";
					else 
						if UL("player")>35 and UM("player")>184 and AH>338 then NS="Lesser Healing Wave(Rank 3)";
						else 
							if UL("player")>27 and UM("player")>144 and AH>247 then NS="Lesser Healing Wave(Rank 2)";
							else 
								if UL("player")>19 and UM("player")>104 and AH>162 then NS="Lesser Healing Wave(Rank 1)";
								else 
									if UL("player")>5 and UM("player")>44 and AH>64 then NS="Healing Wave(Rank 2)";
									else 
										if UL("player")>0 and UM("player")>24 and AH>34 then NS="Healing Wave(Rank 1)";
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
		else 
			if UL("player")>59 and UM("player")>619 and AH>1620 then NS="Healing Wave(Rank 10)";
			else 
				if UL("player")>55 and UM("player")>559 and AH>1367 then NS="Healing Wave(Rank 9)";
				else 
					if UL("player")>47 and UM("player")>439 and AH>1017 then NS="Healing Wave(Rank 8)";
					else 
						if UL("player")>39 and UM("player")>339 and AH>740 then NS="Healing Wave(Rank 7)";
						else 
							if UL("player")>31 and UM("player")>264 and AH>536 then NS="Healing Wave(Rank 6)";
							else 
								if UL("player")>23 and UM("player")>199 and AH>376 then NS="Healing Wave(Rank 5)";
								else 
									if UL("player")>17 and UM("player")>154 and AH>268 then NS="Healing Wave(Rank 4)";
									else 
										if UL("player")>11 and UM("player")>79 and AH>129 then NS="Healing Wave(Rank 3)";
										else 
											if UL("player")>5 and UM("player")>44 and AH>64 then NS="Healing Wave(Rank 2)";
											else 
												if UL("player")>0 and UM("player")>24 and AH>34 then NS="Healing Wave(Rank 1)";
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
		if SW>0 then CastSpellByName(NS);else CastSpellByName("Healing Wave(Rank 1)");end;
		SW=0;
	end;
end;


-=-
/script local UL=UnitLevel;local UM=UnitMana;local UT,AH;local SW=1;local NS="Healing Wave";if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;AH=UnitHealthMax(UT)-UnitHealth(UT);while(SW>0) do if IsAltKeyDown()==nil or SW==2 then if UnitHealth(UT)<(UnitHealthMax(UT)*0.2) and SW~=2 then if UL("player")>59 and UM("player")>379 and AH>832 then NS="Lesser Healing Wave(Rank 6)";else if UL("player")>52 and UM("player")>304 and AH>631 then NS="Lesser Healing Wave(Rank 5)";else if UL("player")>43 and UM("player")>235 and AH>458 then NS="Lesser Healing Wave(Rank 4)";else if UL("player")>35 and UM("player")>184 and AH>338 then NS="Lesser Healing Wave(Rank 3)";else if UL("player")>27 and UM("player")>144 and AH>247 then NS="Lesser Healing Wave(Rank 2)";else if UL("player")>19 and UM("player")>104 and AH>162 then NS="Lesser Healing Wave(Rank 1)";else if UL("player")>5 and UM("player")>44 and AH>64 then NS="Healing Wave(Rank 2)";else if UL("player")>0 and UM("player")>24 and AH>34 then NS="Healing Wave(Rank 1)";end;SW=0;end;end;end;end;end;end;end;else if UL("player")>59 and UM("player")>619 and AH>1620 then NS="Healing Wave(Rank 10)";else if UL("player")>55 and UM("player")>559 and AH>1367 then NS="Healing Wave(Rank 9)";else if UL("player")>47 and UM("player")>439 and AH>1017 then NS="Healing Wave(Rank 8)";else if UL("player")>39 and UM("player")>339 and AH>740 then NS="Healing Wave(Rank 7)";else if UL("player")>31 and UM("player")>264 and AH>536 then NS="Healing Wave(Rank 6)";else if UL("player")>23 and UM("player")>199 and AH>376 then NS="Healing Wave(Rank 5)";else if UL("player")>17 and UM("player")>154 and AH>268 then NS="Healing Wave(Rank 4)";else if UL("player")>11 and UM("player")>79 and AH>129 then NS="Healing Wave(Rank 3)";else if UL("player")>5 and UM("player")>44 and AH>64 then NS="Healing Wave(Rank 2)";else if UL("player")>0 and UM("player")>24 and AH>34 then NS="Healing Wave(Rank 1)";end;SW=0;end;end;end;end;end;end;end;end;end;end;if SW>0 then CastSpellByName(NS);else CastSpellByName("Healing Wave(Rank 1)");end;SW=0;else CastSpellByName("Nature's Swiftness");SW=2;end;end;
-=-
/script local UL=UnitLevel;local UM=UnitMana;local UT,AH;local SW=1;local NS="Healing Wave";
if UL("target")==0 or UnitCanAttack("player","target") then UT="player";else UT="target";end;
AH=UnitHealthMax(UT)-UnitHealth(UT);
while(SW>0) do 
	if IsAltKeyDown()==nil or SW==2 then 
		if UnitHealth(UT)<(UnitHealthMax(UT)*0.2) and SW~=2 then 
			if UL("player")>59 and UM("player")>379 and AH>832 then NS="Lesser Healing Wave(Rank 6)";
			else 
				if UL("player")>52 and UM("player")>304 and AH>631 then NS="Lesser Healing Wave(Rank 5)";
				else 
					if UL("player")>43 and UM("player")>235 and AH>458 then NS="Lesser Healing Wave(Rank 4)";
					else 
						if UL("player")>35 and UM("player")>184 and AH>338 then NS="Lesser Healing Wave(Rank 3)";
						else 
							if UL("player")>27 and UM("player")>144 and AH>247 then NS="Lesser Healing Wave(Rank 2)";
							else 
								if UL("player")>19 and UM("player")>104 and AH>162 then NS="Lesser Healing Wave(Rank 1)";
								else 
									if UL("player")>5 and UM("player")>44 and AH>64 then NS="Healing Wave(Rank 2)";
									else 
										if UL("player")>0 and UM("player")>24 and AH>34 then NS="Healing Wave(Rank 1)";end;
									SW=0;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		else 
			if UL("player")>59 and UM("player")>619 and AH>1620 then NS="Healing Wave(Rank 10)";
			else 
				if UL("player")>55 and UM("player")>559 and AH>1367 then NS="Healing Wave(Rank 9)";
				else 
					if UL("player")>47 and UM("player")>439 and AH>1017 then NS="Healing Wave(Rank 8)";
					else 
						if UL("player")>39 and UM("player")>339 and AH>740 then NS="Healing Wave(Rank 7)";
						else 
							if UL("player")>31 and UM("player")>264 and AH>536 then NS="Healing Wave(Rank 6)";
							else 
								if UL("player")>23 and UM("player")>199 and AH>376 then NS="Healing Wave(Rank 5)";
								else 
									if UL("player")>17 and UM("player")>154 and AH>268 then NS="Healing Wave(Rank 4)";
									else 
										if UL("player")>11 and UM("player")>79 and AH>129 then NS="Healing Wave(Rank 3)";
										else 
											if UL("player")>5 and UM("player")>44 and AH>64 then NS="Healing Wave(Rank 2)";
											else 
												if UL("player")>0 and UM("player")>24 and AH>34 then NS="Healing Wave(Rank 1)";end;
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
		if SW>0 then CastSpellByName(NS);else CastSpellByName("Healing Wave(Rank 1)");end;
		SW=0;
	else 
		CastSpellByName("Nature's Swiftness");
		SW=2;
	end;
end;