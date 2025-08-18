-=Arcane Shot=-
/script if UnitHealth("target")<=0 then TargetNearestEnemy();end;local ix=192;while(ix>0)do if GetSpellName(ix,"spell")=="Arcane Shot"then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Arcane Shot");break;end;end;ix=ix-1;end;

/script 
if UnitHealth("target")<=0 then TargetNearestEnemy();end;
local ix=192;
while(ix>0)do 
	if GetSpellName(ix,"spell")=="Arcane Shot"then 
		if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Arcane Shot");break;end;
	end;
	ix=ix-1;
end;


-=Multi-Shot=-
/script if UnitHealth("target")<=0 then TargetNearestEnemy();end;local ix=192;while(ix>0)do if GetSpellName(ix,"spell")=="Multi-Shot"then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Multi-Shot");break;end;end;ix=ix-1;end;

/script 
if UnitHealth("target")<=0 then TargetNearestEnemy();end;
local ix=192;
while(ix>0)do 
	if GetSpellName(ix,"spell")=="Multi-Shot"then 
		if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Multi-Shot");break;end;
	end;
	ix=ix-1;
end;