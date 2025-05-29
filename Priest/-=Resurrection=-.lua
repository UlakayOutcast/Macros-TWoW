-=Resurrection=-
Воскрешает произнося фразы.

/script if "target" and UnitIsDeadOrGhost("target") then local MR=math.random();if MR<0.5 then SendChatMessage(UnitName("target")..", Get up, barbecue");end;if MR>=0.5 then DoEmote("pray",target);end;end;CastSpellByName("Resurrection(Rank 4)");

/script 
if "target" and UnitIsDeadOrGhost("target") then 
	local MR=math.random();
	if MR<0.5 then SendChatMessage(UnitName("target")..", Get up, barbecue");end;
	if MR>=0.5 then DoEmote("pray",target);end;
end;
CastSpellByName("Resurrection(Rank 4)");


-=Resurrection=- SuperMacro

/script local M=SendChatMessage;local T;local N;if "target" then if UnitIsFriend("player", "target") and UnitIsDeadOrGhost("target") and CheckInteractDistance('target',4) then N=UnitName("target");local R=math.random();if R>0.0 and R<0.2 then M(N..", In the name of oats, cheese and a sow's ear. Aluminum.");end;if R>0.2 and R<0.4 then M(N..", Get up, barbecue");end;if R>0.4 and R<0.6 then M(N..", 11010000 10011000 11010001 10000001 11010001 10000001 11010000 10111010 11010001 10000011 11010000 10111111 11010000 10111011 11010000 10110101 11010000 10111101 11010000 10111000 11010000 10110101");end;if R>0.6 and R<0.8 then DoEmote("pray",target);end;end;end;CastSpellByName("Resurrection(Rank 4)");

/script local M=SendChatMessage;local T;local N;
if "target" then 
	if UnitIsFriend("player", "target") and UnitIsDeadOrGhost("target") and CheckInteractDistance('target',4) then 
		N=UnitName("target");local R=math.random();
		if R>0.0 and R<0.2 then M(N..", In the name of oats, cheese and a sow's ear. Aluminum.");end;
		if R>0.2 and R<0.4 then M(N..", Get up, barbecue");end;
		if R>0.4 and R<0.6 then M(N..", 11010000 10011000 11010001 10000001 11010001 10000001 11010000 10111010 11010001 10000011 11010000 10111111 11010000 10111011 11010000 10110101 11010000 10111101 11010000 10111000 11010000 10110101");end;
		if R>0.6 and R<0.8 then DoEmote("pray",target);end;
	end;
end;
CastSpellByName("Resurrection(Rank 4)");