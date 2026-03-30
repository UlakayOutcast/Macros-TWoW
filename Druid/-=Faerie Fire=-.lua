-=Faerie Fire=-
/script local function Aura(ID)local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()while(ix>0 and active==nil) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;if active then if not ID then return name;else return string.find(name,ID);end;end;end;function Attack_Actions() if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;if not Aura("Bear Form") and not Aura("Cat Form") then if not GotDebuff("Spell_Nature_FaerieFire") and TPoH>0.1 and melee() and not GotBuff("ForceOfNature") then CastSpellByName("Faerie Fire");return;end;end;if (Aura("Bear Form") or Aura("Cat Form")) and not GotDebuff("Spell_Shadow_ImpPhaseShift","player") and not GotDebuff("Spell_Holy_Silence","player") and not GotDebuff("Spell_Shadow_CallofBone","player") then if CastSpellByName("Faerie Fire (Feral)","Rank 4") then return; elseif CastSpellByName("Faerie Fire (Feral)","Rank 3") then return; elseif CastSpellByName("Faerie Fire (Feral)","Rank 2") then return; elseif CastSpellByName("Faerie Fire (Feral)","Rank 1") then return; end;end;end;Attack_Actions() 

/script 
local function Aura(ID)
	local ix,icon,name,active,castable,spellId=GetNumShapeshiftForms()
	while(ix>0 and active==nil) do icon,name,active,castable,spellId=GetShapeshiftFormInfo(ix) ix=ix-1;end;
	if active then if not ID then return name;else return string.find(name,ID);end;end;
end;
function Attack_Actions() 
	if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy();end;
	if not Aura("Bear Form") and not Aura("Cat Form") then 
		if not GotDebuff("Spell_Nature_FaerieFire") and TPoH>0.1 and melee() and not GotBuff("ForceOfNature") then 
			CastSpellByName("Faerie Fire");return;
		end;
	end;
	if (Aura("Bear Form") or Aura("Cat Form")) and not GotDebuff("Spell_Shadow_ImpPhaseShift","player") and not GotDebuff("Spell_Holy_Silence","player") and not GotDebuff("Spell_Shadow_CallofBone","player") then 
		if CastSpellByName("Faerie Fire (Feral)","Rank 4") then return; 
		elseif CastSpellByName("Faerie Fire (Feral)","Rank 3") then return; 
		elseif CastSpellByName("Faerie Fire (Feral)","Rank 2") then return; 
		elseif CastSpellByName("Faerie Fire (Feral)","Rank 1") then return; 
		end;
	end;
end;
Attack_Actions() 