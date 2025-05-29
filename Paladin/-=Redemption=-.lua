-=Redemption=-

/run if "target" and UnitIsDeadOrGhost("target") then local MR=math.random();if MR<0.5 then SendChatMessage(UnitName("target")..", Get up, barbecue");end;if MR>=0.5 then DoEmote("pray",target);end;end;CastSpellByName("Redemption(Rank 4)");

/run 
if "target" and UnitIsDeadOrGhost("target") then 
	local MR=math.random();
	if MR<0.5 then SendChatMessage(UnitName("target")..", Get up, barbecue");end;
	if MR>=0.5 then DoEmote("pray",target);end;
end;
CastSpellByName("Redemption(Rank 4)");


-=Redemption=- SuperMacro

/script local M=SendChatMessage;local T;local N;if "target" then if UnitIsFriend("player", "target") and UnitIsDeadOrGhost("target") then N=UnitName("target");local R=math.random();if R>0.0 and R<0.2 then M(N..", In the name of oats, cheese and a sow's ear. Aluminum.");end;if R>0.2 and R<0.4 then M(N..", Get up, barbecue");end;if R>0.4 and R<0.6 then M(N..", 1010010 1100101 1100100 1100101 1101101 1110000 1110100 1101001 1101111 1101110 ");end;if R>0.6 and R<0.8 then DoEmote("pray",target);end;end;end;CastSpellByName("Redemption(Rank 4)");

/script local M=SendChatMessage;local T;local N;
if "target" then 
	if UnitIsFriend("player", "target") and UnitIsDeadOrGhost("target") then 
		N=UnitName("target");local R=math.random();
		if R>0.0 and R<0.2 then M(N..", In the name of oats, cheese and a sow's ear. Aluminum.");end;
		if R>0.2 and R<0.4 then M(N..", Get up, barbecue");end;
		if R>0.4 and R<0.6 then M(N..", 1010010 1100101 1100100 1100101 1101101 1110000 1110100 1101001 1101111 1101110 ");end;
		if R>0.6 and R<0.8 then DoEmote("pray",target);end;
	end;
end;
CastSpellByName("Redemption(Rank 4)");