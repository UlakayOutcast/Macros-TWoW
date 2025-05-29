-=Blessing of Might & Blessing of Wisdom=- v1
/script local CS=CastSpellByName;local UL=UnitLevel;
if UL("target")>0 
then 
	if UnitCanAttack("player","target")
	then 
		if IsAltKeyDown() then CS("Blessing of Might(Rank 6)"); else CS("Blessing of Wisdom(Rank 5)"); end;
	else 
		if (UnitClass("target")=="Warrior" or UnitClass("target")=="Rogue" or UnitClass("target")=="Hunter") 
		then 
			if UL("player")>51 and UL("target")>41 
			then CS("Blessing of Might(Rank 6)");
			else 
				if UL("player")>41 and UL("target")>31 
				then CS("Blessing of Might(Rank 5)");
				else 
					if UL("player")>31 and UL("target")>21 
					then CS("Blessing of Might(Rank 4)");
					else 
						if UL("player")>21 and UL("target")>11 
						then CS("Blessing of Might(Rank 3)");
						else 
							if UL("player")>11 and UL("target")>3 
							then CS("Blessing of Might(Rank 2)");
							else 
								if UL("player")>3 and UL("target")>0 
								then CS("Blessing of Might(Rank 1)");
								end;
							end;
						end;
					end;
				end;
			end;
		else 
			if UL("player")>53 and UL("target")>43 
			then CS("Blessing of Wisdom(Rank 5)");
			else 
				if UL("player")>43 and UL("target")>33 
				then CS("Blessing of Wisdom(Rank 4)");
				else 
					if UL("player")>33 and UL("target")>23 
					then CS("Blessing of Wisdom(Rank 3)");
					else 
						if UL("player")>23 and UL("target")>13 
						then CS("Blessing of Wisdom(Rank 2)");
						else 
							if UL("player")>13 and UL("target")>3 
							then CS("Blessing of Wisdom(Rank 1)");
							else 
								if UL("player")>0 and UL("target")>0 
								then CS("Blessing of Might(Rank 1)");
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
else 
	if IsAltKeyDown() then CS("Blessing of Might(Rank 6)"); else CS("Blessing of Wisdom(Rank 5)"); end;
end;