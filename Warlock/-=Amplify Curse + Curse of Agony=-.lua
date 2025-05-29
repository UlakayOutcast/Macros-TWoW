-=Amplify Curse + Curse of Agony=-

/script local SW,ix=0;for ix=1,200 do if GetSpellName(ix,"spell")=="Amplify Curse" then if GetSpellCooldown(ix,"spell")==0 then SW=1;end;break;end;end;if IsAltKeyDown() and SW==1 then CastSpellByName("Amplify Curse");else ix=200;while(ix>1)do if GetSpellName(ix,"spell")=="Curse of Agony" then CastSpell(ix,"spell");ix=1;SendChatMessage("saturates a terrible curse on "..UnitName("target")..". The victim will die in agony.","emote")end;ix=ix-1;end;end;

/script local SW,ix=0;
for ix=1,200 do 
	if GetSpellName(ix,"spell")=="Amplify Curse" then 
		if GetSpellCooldown(ix,"spell")==0 then 
			SW=1;
		end;
		break;
	end;
end;
if IsAltKeyDown() and SW==1 then 
	CastSpellByName("Amplify Curse");
else 
	ix=200;
	while(ix>1)do 
		if GetSpellName(ix,"spell")=="Curse of Agony" then 
			CastSpell(ix,"spell");ix=1;
			SendChatMessage("saturates a terrible curse on "..UnitName("target")..". The victim will die in agony.","emote")
		end;
		ix=ix-1;
	end;
end;

-=-

/script local SW,ix=0;for ix=1,200 do if GetSpellName(ix,"spell")=="Amplify Curse" then if GetSpellCooldown(ix,"spell")==0 then SW=1;end;break;end;end;if SW==1 then CastSpellByName("Amplify Curse");else ix=200;while(ix>1)do if GetSpellName(ix,"spell")=="Curse of Agony" then CastSpell(ix,"spell");ix=1;SendChatMessage("saturates a terrible curse on "..UnitName("target")..". The victim will die in agony.","emote")end;ix=ix-1;end;end;

/script local SW,ix=0;
for ix=1,200 do 
	if GetSpellName(ix,"spell")=="Amplify Curse" then 
		if GetSpellCooldown(ix,"spell")==0 then 
			SW=1;
		end;
		break;
	end;
end;
if SW==1 then 
	CastSpellByName("Amplify Curse");
else 
	ix=200;
	while(ix>1)do 
		if GetSpellName(ix,"spell")=="Curse of Agony" then 
			CastSpell(ix,"spell");ix=1;
			SendChatMessage("saturates a terrible curse on "..UnitName("target")..". The victim will die in agony.","emote")
		end;
		ix=ix-1;
	end;
end;

-=-=-

/script local SW,SP,ix=0,GetSpellName;if IsAltKeyDown() then CastSpellByName("Amplify Curse")else ix=200;while(ix>1)do if GetSpellName(ix,"spell")=="Curse of Agony"then CastSpell(ix,"spell")ix=1;end;ix=ix-1;end;end;

/script local SW,SP,ix=0,GetSpellName;
if IsAltKeyDown() then 
	CastSpellByName("Amplify Curse")
else 
	ix=200;
	while(ix>1)do 
		if GetSpellName(ix,"spell")=="Curse of Agony"then 
			CastSpell(ix,"spell")ix=1;
		end;
		ix=ix-1;
	end;
end;