-=Blessing of Might & Blessing of Wisdom=- v3
/script local CS=CastSpellByName;local UL=UnitLevel;local T;local LV;
if (UnitCanAttack("player","target") or UnitExists("target")==nil) then T="player"; else T="target"; end;
if (UnitCreatureType(T)=="Beast" or UnitCreatureFamily(T)=="Voidwalker" or UnitCreatureFamily(T)=="Felhunter"
 or UnitClass(T)=="Warrior" or UnitClass(T)=="Rogue" or IsAltKeyDown()) 
then  
	if UL("player")>51 and UL(T)>41 then LV="(Rank 6)" else 
	if UL("player")>41 and UL(T)>31 then LV="(Rank 5)" else 
	if UL("player")>31 and UL(T)>21 then LV="(Rank 4)" else 
	if UL("player")>21 and UL(T)>11 then LV="(Rank 3)" else 
	if UL("player")>11 and UL(T)>3 then LV="(Rank 2)" else 
	if UL("player")>3 and UL(T)>0 then LV="(Rank 1)" 
	end;end;end;end;end;end; 
	CS("Blessing of Might"..LV);
else 
	if UL("player")>53 and UL(T)>43  then LV="(Rank 5)" else 
	if UL("player")>43 and UL(T)>33  then LV="(Rank 4)" else 
	if UL("player")>33 and UL(T)>23  then LV="(Rank 3)" else 
	if UL("player")>23 and UL(T)>13  then LV="(Rank 2)" else 
	if UL("player")>13 and UL(T)>3  then LV="(Rank 1)" else 
	end;end;end;end;end;
	if UL("player")>13 and UL(T)<4  then CS("Blessing of Might(Rank 1)");else 
	CS("Blessing of Wisdom"..LV); end;
end;
