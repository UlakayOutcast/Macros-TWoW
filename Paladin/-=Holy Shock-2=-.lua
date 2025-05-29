--"Divine Favor" и "Holy Shock" используются одновременно, для 100% крита.
--/run CastSpellByName("Divine Favor");SpellStopCasting();CastSpellByName("Holy Shock(Rank 1)");


-=Holy Shock-Holy Heal=-
/script local c,n,x,d,s=GetSpellCooldown;for x=1,99 do n=GetSpellName(x,1)if n=="Divine Favor"then d=x;end;if n=="Holy Shock"then s=x;end;end;if IsAltKeyDown() and c(d,1)==0 then CastSpell(d,1);else if c(s,1)==0 then CastSpellByName("Holy Shock")end;end;

/script local c,n,x,d,s=GetSpellCooldown;
for x=1,99 do n=GetSpellName(x,1)
	if n=="Divine Favor"then d=x;end;
	if n=="Holy Shock"then s=x;end;
end;
if IsAltKeyDown() and c(d,1)==0 then CastSpell(d,1);
else if c(s,1)==0 then CastSpellByName("Holy Shock")end;
end;


-=Holy Shock=-
/script local c,n,x,d,s=GetSpellCooldown;for x=1,99 do n=GetSpellName(x,1)if n=="Divine Favor"then d=x;end;if n=="Holy Shock"then s=x;end;end;if c(d,1)==0 then CastSpell(d,1);else if c(s,1)==0 then CastSpellByName("Holy Shock")end;end;

/script local c,n,x,d,s=GetSpellCooldown;
for x=1,99 do n=GetSpellName(x,1)
	if n=="Divine Favor"then d=x;end;
	if n=="Holy Shock"then s=x;end;
end;
if c(d,1)==0 then CastSpell(d,1);
else if c(s,1)==0 then CastSpellByName("Holy Shock")end;
end;


-=Holy Heal=-
/script local c,n,x,d,s=GetSpellCooldown;for x=1,99 do n=GetSpellName(x,1)if n=="Divine Favor"then d=x;end;if n=="Holy Shock"then s=x;end;end;if IsAltKeyDown() and c(d,1)==0 then CastSpell(d,1);else if c(s,1)==0 then CastSpellByName("Holy Shock",UnitCanAttack("player","target"))end;end;

/script local c,n,x,d,s=GetSpellCooldown;
for x=1,99 do n=GetSpellName(x,1)
	if n=="Divine Favor"then d=x;end;
	if n=="Holy Shock"then s=x;end;
end;
if IsAltKeyDown() and c(d,1)==0 then CastSpell(d,1);
else if c(s,1)==0 then CastSpellByName("Holy Shock",UnitCanAttack("player","target"))end;
end;

