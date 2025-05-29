Druid-=Attack+Savage Bite-Maul+Rake-Claw=-v2  - атака + в мишке (Savage Bite и Maul) или в коте (Rake или Claw) 
/script local function action(name,self) local ix for ix=1,200 do if GetSpellName(ix,"spell")==name then if GetSpellCooldown(ix,"spell")==0 then CastSpellByName(name,self) return 1 end end end end local function GotBuff(name,target) local tex,cnt for ix = 1,32 do tex,cnt = UnitBuff("player",ix) if not tex then return end if strfind(tex,name) then return cnt end end end local function GotDebuff(name,target) if not target then target = 'target' end local tex,cnt for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return end if strfind(tex,name) then return cnt end end end function Attack_Actions() for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then UseAction(C) C=96 end end if GotBuff('Ability_Racial_BearForm') then if action("Maul") then end if action("Savage Bite") then return end end if GotBuff('Ability_Druid_CatForm') then if not GotDebuff('Ability_Druid_Disembowel') then if action("Rake") then return end end if action("Claw") then return end end end Attack_Actions()

/script 
local function action(name,self) 
	local ix 
	for ix=1,200 do if GetSpellName(ix,"spell")==name then 
		if GetSpellCooldown(ix,"spell")==0 then CastSpellByName(name,self) return 1 end 
		end 
	end 
end 
local function GotBuff(name,target) 
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitBuff("player",ix) 
		if not tex then return end 
		if strfind(tex,name) then return cnt end 
	end 
end 
local function GotDebuff(name,target) 
	if not target then target = 'target' end 
	local tex,cnt 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return end 
		if strfind(tex,name) then return cnt end 
	end 
end 
function Attack_Actions() 
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then UseAction(C) C=96 end end 
	if GotBuff('Ability_Racial_BearForm') then 
		if action("Maul") then end 
		if action("Savage Bite") then return end 
	end 
	if GotBuff('Ability_Druid_CatForm') then 
		if not GotDebuff('Ability_Druid_Disembowel') then if action("Rake") then return end end 
		if action("Claw") then return end 
	end 
end 
Attack_Actions()