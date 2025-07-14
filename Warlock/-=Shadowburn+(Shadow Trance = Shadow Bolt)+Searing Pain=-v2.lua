-=Shadowburn + (Shadow Trance = Shadow Bolt) + Searing Pain=- Тип и Ранг в зависимости от здоровья цели и маны игрока (спроверкой таланта Cataclysm).
/script local function GotBuff(name,target) if not target then target="player";end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitBuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return ix;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return ix;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;end;end;ix=ix-1;end;end;function CastSpels()if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;if UnitCanAttack("player","target") and UnitHealth("target")>0 then local _,_,_,_,CTR=GetTalentInfo(3, 2);CTR=(100-CTR*2)/100;local PM=UnitMana("player");local TH=UnitHealth("target");if GotBuff("Spell_Shadow_Twilight") then if PM>=380*CTR and TH>=539 and ActSpell("Shadow Bolt","Rank 10") then return;end;if PM>=370*CTR and TH>=508 and ActSpell("Shadow Bolt","Rank 9") then return;end;if PM>=315*CTR and TH>=403 and ActSpell("Shadow Bolt","Rank 8") then return;end;if PM>=265*CTR and TH>=316 and ActSpell("Shadow Bolt","Rank 7") then return;end;if PM>=210*CTR and TH>=231 and ActSpell("Shadow Bolt","Rank 6") then return;end;if PM>=160*CTR and TH>=163 and ActSpell("Shadow Bolt","Rank 5") then return;end;if PM>=110*CTR and TH>=99 and ActSpell("Shadow Bolt","Rank 4") then return;end;if PM>=70*CTR and TH>=57 and ActSpell("Shadow Bolt","Rank 3") then return;end;if PM>=40*CTR and TH>=30 and ActSpell("Shadow Bolt","Rank 2") then return;end;if PM>=25*CTR and TH>=17 and ActSpell("Shadow Bolt","Rank 1") then return;end;end;if not UnitIsTrivial("target") then if PM>=105*CTR and TH<=100+random(100) and ActSpell("Shadowburn","Rank 1") then return;end;if PM>=130*CTR and TH<=132+random(132) and ActSpell("Shadowburn","Rank 2") then return;end;if PM>=190*CTR and TH<=211+random(211) and ActSpell("Shadowburn","Rank 3") then return;end;if PM>=245*CTR and TH<=294+random(294) and ActSpell("Shadowburn","Rank 4") then return;end;if PM>=305*CTR and TH<=393+random(393) and ActSpell("Shadowburn","Rank 5") then return;end;if PM>=365*CTR and TH<=503+random(503) and ActSpell("Shadowburn","Rank 6") then return;end;end;if PM>=168*CTR and TH>=261 and ActSpell("Searing Pain","Rank 6") then return;end;if PM>=141*CTR and TH>=205 and ActSpell("Searing Pain","Rank 5") then return;end;if PM>=118*CTR and TH>=159 and ActSpell("Searing Pain","Rank 4") then return;end;if PM>=91*CTR and TH>=114 and ActSpell("Searing Pain","Rank 3") then return;end;if PM>=68*CTR and TH>=78 and ActSpell("Searing Pain","Rank 2") then return;end;if PM>=45*CTR and TH>=46 and ActSpell("Searing Pain","Rank 1") then return;end;CastSpellByName("Searing Pain");end;end;CastSpels();

/script 
local function GotBuff(name,target) 
	if not target then target="player";end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitBuff(target,ix);
		if not tex then return; end;
		if strfind(tex,name) then return cnt; end;
	end;
end;
local function ActSpell(spell,rank,sw) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		spellName,spellRank=GetSpellName(ix,"spell");
		if spellName==spell and (spellRank==rank or rank==nil) then 
			if sw==true then return ix;end;
			if sw==0 then return GetSpellCooldown(ix,"spell");end;
			if sw=="self" then 
				if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return ix;
			end;
			if sw==nil then 
				if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return ix;end;
			end;
		end;
		ix=ix-1;
	end;
end;
function CastSpels()
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	if UnitCanAttack("player","target") and UnitHealth("target")>0 then 
		local _,_,_,_,CTR=GetTalentInfo(3, 2);CTR=(100-CTR*2)/100;
		local PM=UnitMana("player");local TH=UnitHealth("target");
		if GotBuff("Spell_Shadow_Twilight") then 
			if PM>=380*CTR and TH>=539 and ActSpell("Shadow Bolt","Rank 10") then return;end;
			if PM>=370*CTR and TH>=508 and ActSpell("Shadow Bolt","Rank 9") then return;end;
			if PM>=315*CTR and TH>=403 and ActSpell("Shadow Bolt","Rank 8") then return;end;
			if PM>=265*CTR and TH>=316 and ActSpell("Shadow Bolt","Rank 7") then return;end;
			if PM>=210*CTR and TH>=231 and ActSpell("Shadow Bolt","Rank 6") then return;end;
			if PM>=160*CTR and TH>=163 and ActSpell("Shadow Bolt","Rank 5") then return;end;
			if PM>=110*CTR and TH>=99 and ActSpell("Shadow Bolt","Rank 4") then return;end;
			if PM>=70*CTR and TH>=57 and ActSpell("Shadow Bolt","Rank 3") then return;end;
			if PM>=40*CTR and TH>=30 and ActSpell("Shadow Bolt","Rank 2") then return;end;
			if PM>=25*CTR and TH>=17 and ActSpell("Shadow Bolt","Rank 1") then return;end;
		end;
		if not UnitIsTrivial("target") then 
			if PM>=105*CTR and TH<=100+random(100) and ActSpell("Shadowburn","Rank 1") then return;end;
			if PM>=130*CTR and TH<=132+random(132) and ActSpell("Shadowburn","Rank 2") then return;end;
			if PM>=190*CTR and TH<=211+random(211) and ActSpell("Shadowburn","Rank 3") then return;end;
			if PM>=245*CTR and TH<=294+random(294) and ActSpell("Shadowburn","Rank 4") then return;end;
			if PM>=305*CTR and TH<=393+random(393) and ActSpell("Shadowburn","Rank 5") then return;end;
			if PM>=365*CTR and TH<=503+random(503) and ActSpell("Shadowburn","Rank 6") then return;end;
		end;
		if PM>=168*CTR and TH>=261 and ActSpell("Searing Pain","Rank 6") then return;end;
		if PM>=141*CTR and TH>=205 and ActSpell("Searing Pain","Rank 5") then return;end;
		if PM>=118*CTR and TH>=159 and ActSpell("Searing Pain","Rank 4") then return;end;
		if PM>=91*CTR and TH>=114 and ActSpell("Searing Pain","Rank 3") then return;end;
		if PM>=68*CTR and TH>=78 and ActSpell("Searing Pain","Rank 2") then return;end;
		if PM>=45*CTR and TH>=46 and ActSpell("Searing Pain","Rank 1") then return;end;
		CastSpellByName("Searing Pain");
	end;
end;
CastSpels();