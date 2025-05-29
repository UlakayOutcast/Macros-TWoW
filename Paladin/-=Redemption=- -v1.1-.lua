-=Redemption=-

/run local R,S;if"target"then if UnitIsDeadOrGhost("target")then R=math.random(4);if R==1 then S="pray";end;if R==2 then S="raise";end;if R==3 then S="slap";end;if R==4 then S="blow";end;DoEmote(S,target);CastSpellByName("Redemption(Rank 4)");end;end

/run local R,S;
if"target"then 
	if UnitIsDeadOrGhost("target")then 
		R=math.random(4);
		if R==1 then S="pray";end;
		if R==2 then S="raise";end;
		if R==3 then S="slap";end;
		if R==4 then S="blow";end;
		DoEmote(S,target);CastSpellByName("Redemption(Rank 1)");
	end;
end


-=Redemption=- SuperMacro

/script local M,R,N=SendChatMessage;if "target" then if UnitIsFriend("player","target") and UnitIsDeadOrGhost("target") and CheckInteractDistance("target",4)==1 then N=UnitName("target"); R=math.random(10);if R==1 then M(N..", Get up, barbecue.");end;if R==2 then M(N..".. In the name of oats, cheese and a sow's ear. Aluminum.");end;if R==3 then M("1000111 1100101 1110100 100000 1110101 1110000 "..N);end;if R==4 then M(".."..N.."..");end;if R==5 then DoEmote("pray",target);end;if R==6 then DoEmote("raise",target);end;if R==7 then DoEmote("tickle",target);end;if R==8 then DoEmote("poke",target);end;if R==9 then DoEmote("slap",target);end;if R==10 then DoEmote("blow",target);end;CastSpellByName("Redemption(Rank 1)");end;end;

/script local M,R,N=SendChatMessage;
if "target" then 
	if UnitIsFriend("player","target") and UnitIsDeadOrGhost("target") and CheckInteractDistance("target",4)==1 then 
		N=UnitName("target"); R=math.random(10);
		if R==1 then M(N..", Get up, barbecue.");end;
		if R==2 then M(N..".. In the name of oats, cheese and a sow's ear. Aluminum.");end;
		if R==3 then M("1000111 1100101 1110100 100000 1110101 1110000 "..N);end;
		if R==4 then M(".."..N.."..");end;
		if R==5 then DoEmote("pray",target);end;
		if R==6 then DoEmote("raise",target);end;
		if R==7 then DoEmote("tickle",target);end;
		if R==8 then DoEmote("poke",target);end;
		if R==9 then DoEmote("slap",target);end;
		if R==10 then DoEmote("blow",target);end;
		CastSpellByName("Redemption(Rank 1)");
	end;
end;