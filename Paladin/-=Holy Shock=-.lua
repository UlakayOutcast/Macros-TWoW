--"Divine Favor" и "Holy Shock" используются одновременно, для 100% крита.
--/run CastSpellByName("Divine Favor");SpellStopCasting();CastSpellByName("Holy Shock(Rank 1)");


-=Holy Shock=-
если зажат Alt. используется Divine Favor
/script local SW=1;while(SW>0)do if IsAltKeyDown()==nil or SW==2 then CastSpellByName("Holy Shock");SW=0;else CastSpellByName("Divine Favor");SW=2;end;end;

/script local SW=1;
while(SW>0)do 
	if IsAltKeyDown()==nil or SW==2 then 
		CastSpellByName("Holy Shock");
		SW=0;
	else 
		CastSpellByName("Divine Favor");
		SW=2;
	end;
end;



-=Holy Heal=-
/script local SW=1;while(SW>0)do if IsAltKeyDown()==nil or SW==2 then if UnitCanAttack("player","target")then CastSpellByName("Holy Shock",true);else CastSpellByName("Holy Shock");end;SW=0;else CastSpellByName("Divine Favor");SW=2;end;end;

/script local SW=1;
while(SW>0)do 
	if IsAltKeyDown()==nil or SW==2 then 
		if UnitCanAttack("player","target") then 
			CastSpellByName("Holy Shock",true);
		else 
			CastSpellByName("Holy Shock");
		end;
		SW=0;
	else 
		CastSpellByName("Divine Favor");
		SW=2;
	end;
end;


-=Holy Shock-Holy Heal=-
/script local SW=1;while(SW>0)do if IsAltKeyDown()==nil or SW==2 then if UnitCanAttack("player","target") and SW==2 then CastSpellByName("Holy Shock",true);else CastSpellByName("Holy Shock");end;SW=0;else CastSpellByName("Divine Favor");SW=2;end;end;

/script local SW=1;
while(SW>0)do 
	if IsAltKeyDown()==nil or SW==2 then 
		if UnitCanAttack("player","target") and SW==2 then 
			CastSpellByName("Holy Shock",true);
		else 
			CastSpellByName("Holy Shock");
		end;
		SW=0;
	else 
		CastSpellByName("Divine Favor");
		SW=2;
	end;
end;