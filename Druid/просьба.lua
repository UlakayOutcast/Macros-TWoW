/script 
local function GotBuff(name,target) 
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix) 
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function GotDebuff(name,target) 
	if not target then target = "target" end;
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return end;
		if strfind(tex,name) then return cnt end;
	end;
end;
local function action(spell,rank,self) 
	local ix,spellName,spellRank=192 
	while(ix>0) do 
		if ix==0 then return nil 
		else 
			spellName,spellRank=GetSpellName(ix,"spell") 
			if spellName==spell and (spellRank==rank or rank==nil) then 
				if GetSpellCooldown(ix,"spell")==0 then 
					if self then CastSpellByName(spell.."("..rank..")",self) 
					else CastSpell(ix,"spell") end;
					return true 
				end;
			end;
			ix=ix-1 
		end;
	end;
end;
function Attack_Actions() 
	local nf,fx=GetNumShapeshiftForms();
	local TiE;if UnitExists("target") then TiE=UnitCanAttack("player","target");end;
	local mana=UnitMana("player");
	local OoC=GotBuff("Spell_Shadow_ManaBurn");
	local _,_,_,_,TR=GetTalentInfo(2,1);
	if TiE then for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName("Attack") C=96 return end;end; end;
	if not GotBuff("Ability_Racial_BearForm") and not GotBuff("Ability_Druid_CatForm") then 
		if TiE and not IsAltKeyDown() then action("Wrath");else action("Regrowth");end;
	else 
		if TiE==nil or IsAltKeyDown() then 
			for fx=1,nf do 
				if strfind(GetShapeshiftFormInfo(fx),"WispSplode")then 
					CastShapeshiftForm(fx);break;
				end;
			end;
		else 
			if not GotDebuff("Spell_Nature_FaerieFire") then 
				if action("Faerie Fire (Feral)","Rank 4") then return 
				elseif action("Faerie Fire (Feral)","Rank 3") then return 
				elseif action("Faerie Fire (Feral)","Rank 2") then return 
				elseif action("Faerie Fire (Feral)","Rank 1") then return 
				end;
			end;
			if GotBuff("Ability_Racial_BearForm") then 
				if (mana>=15-TR or OoC) and action("Maul") then end;
			end;
			if GotBuff("Ability_Druid_CatForm") then 
				if (mana>=45-TR or OoC) and action("Claw") then end;
			end;
		end;
	end;
end;
Attack_Actions() 