/script local ix,tex,cnt=0;while (ix<32) do ix=ix+1;tex,cnt=UnitBuff("player",ix);if tex then if tex=="Ability_Mount_JungleTiger"then CancelPlayerBuff(ix-1);break;end;end;end;if ix>=32 then CastSpellByName("Aspect of the Cheetah");end;

/script 
local ix,tex,cnt=0;
while (ix<32) do ix=ix+1;
	tex,cnt=UnitBuff("player",ix);
	if tex then 
		if tex=="Ability_Mount_JungleTiger"then CancelPlayerBuff(ix-1);break;end;
	end;
end;
if ix>=32 then CastSpellByName("Aspect of the Cheetah");end;


--Aspect of the Cheetah/Pack
/script local ix,tex,cnt=0;while (ix<32) do ix=ix+1;tex,cnt=UnitBuff("player",ix);if tex then if tex=="Ability_Mount_JungleTiger" or tex=="Ability_Mount_WhiteTiger" then CancelPlayerBuff(ix-1);break;end;end;end;if ix>=32 then if IsAltKeyDown()then CastSpellByName("Aspect of the Pack");else CastSpellByName("Aspect of the Cheetah");end;end;

/script 
local ix,tex,cnt=0;
while (ix<32) do ix=ix+1;
	tex,cnt=UnitBuff("player",ix);
	if tex then 
		if tex=="Ability_Mount_JungleTiger" or tex=="Ability_Mount_WhiteTiger" then CancelPlayerBuff(ix-1);break;end;
	end;
end;
if ix>=32 then 
	if IsAltKeyDown()then CastSpellByName("Aspect of the Pack");else CastSpellByName("Aspect of the Cheetah");end;
end;