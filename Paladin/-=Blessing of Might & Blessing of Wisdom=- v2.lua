-=Blessing of Might & Blessing of Wisdom=- v2

/script local CS=CastSpellByName;local UL=UnitLevel;local T;
if (UnitCanAttack("player","target") or UnitExists("target")==nil) then T="player"; else T="target"; end;
if (UnitClass(T)=="Warrior" or UnitClass(T)=="Rogue" or UnitClass(T)=="Hunter" or IsAltKeyDown()) 
then 
	if UL("player")>51 and UL(T)>41 
	then CS("Blessing of Might(Rank 6)");
	else 
		if UL("player")>41 and UL(T)>31 
		then CS("Blessing of Might(Rank 5)");
		else 
			if UL("player")>31 and UL(T)>21 
			then CS("Blessing of Might(Rank 4)");
			else 
				if UL("player")>21 and UL(T)>11 
				then CS("Blessing of Might(Rank 3)");
				else 
					if UL("player")>11 and UL(T)>3 
					then CS("Blessing of Might(Rank 2)");
					else 
						if UL("player")>3 and UL(T)>0 
						then CS("Blessing of Might(Rank 1)");
						end;
					end;
				end;
			end;
		end;
	end;
else 
	if UL("player")>53 and UL(T)>43 
	then CS("Blessing of Wisdom(Rank 5)");
	else 
		if UL("player")>43 and UL(T)>33 
		then CS("Blessing of Wisdom(Rank 4)");
		else 
			if UL("player")>33 and UL(T)>23 
			then CS("Blessing of Wisdom(Rank 3)");
			else 
				if UL("player")>23 and UL(T)>13 
				then CS("Blessing of Wisdom(Rank 2)");
				else 
					if UL("player")>13 and UL(T)>3 
					then CS("Blessing of Wisdom(Rank 1)");
					else 
						if UL("player")>0 and UL(T)>0 
						then CS("Blessing of Might(Rank 1)");
						end;
					end;
				end;
			end;
		end;
	end;
end;