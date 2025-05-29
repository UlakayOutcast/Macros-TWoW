-=Immolate+Conflagrate=-
/script local ix,tex=0;if UnitExists("target")then for ix=1,32 do tex = UnitDebuff("target",ix)if tex then if strfind(tex,"Spell_Fire_Immolation")then CastSpellByName("Conflagrate")ix=33;end;end;end;end;if ix<33 then CastSpellByName("Immolate")end;

/script local ix,tex=0;
if UnitExists("target")then 
	for ix=1,32 do 
		tex = UnitDebuff("target",ix)
		if tex then 
			if strfind(tex,"Spell_Fire_Immolation")then CastSpellByName("Conflagrate")ix=33;end;
		end;
	end;
end;
if ix<33 then CastSpellByName("Immolate")end;

-=-

/script local tex,cnt,ix,yx;if UnitExists("target")then for ix=1,32 do tex,cnt = UnitDebuff("target",ix)if tex then if strfind(tex,"Spell_Fire_Immolation")then local spellName,spellRank;for ix=1,192 do spellName,spellRank=GetSpellName(ix,"spell")if spellName=="Conflagrate" then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Conflagrate")else CastSpellByName("Searing Pain")end;ix=192;end;end;end;else CastSpellByName("Immolate")ix=32;end;end;end;

/script local tex,cnt,ix,yx;
if UnitExists("target")then 
	for ix=1,32 do 
		tex,cnt = UnitDebuff("target",ix)
		if tex then 
			if strfind(tex,"Spell_Fire_Immolation")then 
				local spellName,spellRank;
				for ix=1,192 do 
					spellName,spellRank=GetSpellName(ix,"spell")
					if spellName=="Conflagrate" then 
						if GetSpellCooldown(ix,"spell")==0 then CastSpellByName("Conflagrate")
						else CastSpellByName("Searing Pain")end;
						ix=192;
					end;
				end;
			end;
		else 
			CastSpellByName("Immolate")ix=32;
		end;
	end;
end;

-=-

/script local function GotDebuff(name,target) if not target then target = 'target' end local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return end if strfind(tex,name) then return cnt end end end local function action(spell,rank,self) local ix,spellName,spellRank=192 while(ix>0) do if ix==0 then return nil else spellName,spellRank=GetSpellName(ix,"spell") if spellName==spell and (spellRank==rank or rank==nil) then if GetSpellCooldown(ix,"spell")==0 then if self then CastSpellByName(spell.."("..rank..")",self) else CastSpell(ix,'spell') end return true end end ix=ix-1 end end end if GotDebuff('Spell_Fire_Immolation') and action('Conflagrate') then CastSpellByName('Conflagrate')else if action('Immolate') then else action('Searing Pain')end end 

/script 
local function GotDebuff(name,target) 
	if not target then target = 'target' end 
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return end 
		if strfind(tex,name) then return cnt end 
	end 
end 
local function action(spell,rank,self) 
	local ix,spellName,spellRank=192 
	while(ix>0) do 
		if ix==0 then return nil 
		else 
			spellName,spellRank=GetSpellName(ix,"spell") 
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if GetSpellCooldown(ix,"spell")==0 then 
					if self then CastSpellByName(spell.."("..rank..")",self) 
					else CastSpell(ix,'spell') end 
					return true 
				end 
			end 
			ix=ix-1 
		end 
	end 
end 
if GotDebuff('Spell_Fire_Immolation') and action('Conflagrate') then CastSpellByName('Conflagrate')
else 
	if action('Immolate') then 
	else 
		action('Searing Pain')
	end 
end 