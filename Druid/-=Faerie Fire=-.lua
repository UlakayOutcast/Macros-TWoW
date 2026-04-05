-=Faerie Fire=-
/script local function GotDebuff(name,target) if not target then target="target" end;local tex,cnt,ix;for ix = 1,32 do tex,cnt = UnitDebuff(target,ix);if not tex then return; end;if strfind(tex,name) then return cnt; end;end;end;local function ActSpell(spell,rank,sw) local ix,spellName,spellRank=192;while(ix>0) do spellName,spellRank=GetSpellName(ix,"spell");if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return true;end;if sw==0 then return GetSpellCooldown(ix,"spell");end;if sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return true;end;if sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;end;end;ix=ix-1;end;end;local function Aura(ID)local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()while(ix>0 and active==nil) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;if active then if not ID then return name;else return string.find(name,ID);end;end;end;function Attack_Actions() if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;if Aura("Bear Form") or Aura("Cat Form") then if ActSpell("Faerie Fire (Feral)","Rank 4") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; end;else CastSpellByName("Faerie Fire");end;end;Attack_Actions() 

/script 
local function GotDebuff(name,target) 
	if not target then target="target" end;
	local tex,cnt,ix;
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix);
		if not tex then return; end;
		if strfind(tex,name) then return cnt; end;
	end;
end;
local function ActSpell(spell,rank,sw) 
	local ix,spellName,spellRank=192;
	while(ix>0) do 
		spellName,spellRank=GetSpellName(ix,"spell");
		if spellName==spell and (spellRank==rank or rank==nil) then 
			if sw==true then return true;end;
			if sw==0 then return GetSpellCooldown(ix,"spell");end;
			if sw=="self" then 
				if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1);end;return true;
			end;
			if sw==nil then 
				if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell");return true;end;
			end;
		end;
		ix=ix-1;
	end;
end;
local function Aura(ID)
	local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()
	while(ix>0 and active==nil) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;
	if active then if not ID then return name;else return string.find(name,ID);end;end;
end;
function Attack_Actions() 
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	if Aura("Bear Form") or Aura("Cat Form") then 
		if ActSpell("Faerie Fire (Feral)","Rank 4") then return; 
		elseif ActSpell("Faerie Fire (Feral)","Rank 3") then return; 
		elseif ActSpell("Faerie Fire (Feral)","Rank 2") then return; 
		elseif ActSpell("Faerie Fire (Feral)","Rank 1") then return; 
		end;
	else 
		CastSpellByName("Faerie Fire");
	end;
end;
Attack_Actions() 