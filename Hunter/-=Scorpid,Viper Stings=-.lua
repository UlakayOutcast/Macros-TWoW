-=Scorpid,Viper Stings=-
Использует Scorpid Sting или Viper Sting в зависимости от класса и типа выбранной цели.

/script local UC,UT;UC=UnitClass("target");UT=UnitCreatureType("target");if (UC=="Warrior"or UC=="Rogue"or UT=="Beast"or UT=="Voidwalker"or UT=="Felhunter")then CastSpellByName("Scorpid Sting");else CastSpellByName("Viper Sting");end;

/script local UC,UT;
UC=UnitClass("target");UT=UnitCreatureType("target");
if (UC=="Warrior"or UC=="Rogue"or UT=="Beast"or UT=="Voidwalker"or UT=="Felhunter")then 
	CastSpellByName("Scorpid Sting");
else 
	CastSpellByName("Viper Sting");
end;


/script local SP,UC,UT="Aspect of the Wolf";if buffed("Aspect of the Wolf")=="buff" then CastSpellByName(SP);end;UC=UnitClass("target");UT=UnitCreatureType("target");if (UC=="Warrior"or UC=="Rogue"or UT=="Beast"or UT=="Voidwalker"or UT=="Felhunter")then CastSpellByName("Scorpid Sting");else CastSpellByName("Viper Sting");end;

/script local SP,UC,UT="Aspect of the Wolf";
if buffed("Aspect of the Wolf")=="buff" then CastSpellByName(SP);end;
UC=UnitClass("target");UT=UnitCreatureType("target");
if (UC=="Warrior"or UC=="Rogue"or UT=="Beast"or UT=="Voidwalker"or UT=="Felhunter")then 
	CastSpellByName("Scorpid Sting");
else 
	CastSpellByName("Viper Sting");
end;


-=Scorpid,Viper Stings=- SuperMacro
Использует Scorpid Sting или Viper Sting, в зависимости от класса и типа выбранной цели.

/script local UL,LV,UC,UT=UnitLevel;if UnitExists("target") then UC=UnitClass("target");UT=UnitCreatureType("target");if (UC=="Warrior" or UC=="Rogue" or UT=="Beast" or UT=="Voidwalker" or UT=="Felhunter") and UnitLevel("player") >35 then if UL("player")>51 then LV="Rank 4" else if UL("player")>41 then LV="Rank 3" else if UL("player")>31 then LV="Rank 2" else if UL("player")>23 then LV="Rank 1" else LV="0" end;end;end;end;CastSpellByName("Scorpid Sting("..LV..")");else if UL("player")>55 then LV="Rank 3" else if UL("player")>45 then LV="Rank 2" else if UL("player")>35 then LV="Rank 1" else LV="0" end;end;end;CastSpellByName("Viper Sting("..LV..")");end;end;

/script local UL,LV,UC,UT=UnitLevel;
if UnitExists("target") then 
	UC=UnitClass("target");UT=UnitCreatureType("target");
	if (UC=="Warrior" or UC=="Rogue" or UT=="Beast" or UT=="Voidwalker" or UT=="Felhunter") and UnitLevel("player") >35 then 
		if UL("player")>51 then LV="Rank 4" else 
		if UL("player")>41 then LV="Rank 3" else 
		if UL("player")>31 then LV="Rank 2" else 
		if UL("player")>23 then LV="Rank 1" else LV="0" 
		end;end;end;end;
		CastSpellByName("Scorpid Sting("..LV..")");
	else 
		if UL("player")>55 then LV="Rank 3" else 
		if UL("player")>45 then LV="Rank 2" else 
		if UL("player")>35 then LV="Rank 1" else LV="0" 
		end;end;end;
		CastSpellByName("Viper Sting("..LV..")");
	end;
end;