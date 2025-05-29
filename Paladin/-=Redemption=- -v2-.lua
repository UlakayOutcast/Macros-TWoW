-=Redemption=-

/run local R,S;if"target"and UnitIsDeadOrGhost("target")then R=math.random(4);if R==1 then S="pray";end;if R==2 then S="raise";end;if R==3 then S="slap";end;if R==4 then S="tickle";end;DoEmote(S,target);end;CastSpellByName("Redemption");

/run local R,S;
if"target"and UnitIsDeadOrGhost("target")then 
	R=math.random(4);
	if R==1 then S="pray";end;
	if R==2 then S="raise";end;
	if R==3 then S="slap";end;
	if R==4 then S="tickle";end;
	DoEmote(S,target);
end;
CastSpellByName("Redemption");


-=Redemption=- SuperMacro

/script local M,R,N=SendChatMessage;if "target" and UnitIsDeadOrGhost("target") and CheckInteractDistance("target",4)==1 and UnitMana("player")>(UnitLevel("player")*17.80769230769231) then N=UnitName("target"); R=math.random(10);if R==1 then M(N..", Get up, barbecue.");end;if R==2 then M(N..".. In the name of oats, cheese and a sow's ear. Aluminum.");end;if R==3 then M("1000111 1100101 1110100 100000 1110101 1110000 "..N);end;if R==4 then M(".."..N.."..");end;if R==5 then DoEmote("pray",target);end;if R==6 then DoEmote("raise",target);end;if R==7 then DoEmote("tickle",target);end;if R==8 then DoEmote("poke",target);end;if R==9 then DoEmote("slap",target);end;if R==10 then DoEmote("blow",target);end;end;CastSpellByName("Redemption");

/script local M,R,N=SendChatMessage;
if "target" and UnitIsDeadOrGhost("target") and CheckInteractDistance("target",4)==1 and UnitMana("player")>(UnitLevel("player")*17.80769230769231) then 
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
end;
CastSpellByName("Redemption");



-- if UnitLevel("player")>59 then CastSpellByName("Redemption(Rank 5)");
-- else 
	-- if UnitLevel("player")>47 then CastSpellByName("Redemption(Rank 4)");
	-- else 
		-- if UnitLevel("player")>35 then CastSpellByName("Redemption(Rank 3)");
		-- else 
			-- if UnitLevel("player")>23 then CastSpellByName("Redemption(Rank 2)");
			-- else 
				-- if UnitLevel("player")>11 then CastSpellByName("Redemption(Rank 1)");
				-- end;
			-- end;
		-- end;
	-- end;
-- end;