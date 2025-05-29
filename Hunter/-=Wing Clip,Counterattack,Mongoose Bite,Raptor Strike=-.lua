-=AWCMR=- С проверков отката и подстановкой ранга. SuperMacro
/script local function GotDebuff(name,target) if not target then target = 'target' end local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitDebuff(target,ix) if not tex then return end if strfind(tex,name) then return cnt end end end local function action(name,self) local ix for ix=1,200 do if GetSpellName(ix,'spell')==name then if GetSpellCooldown(ix,'spell')==0 then CastSpellByName(name,self) return 1 end end end end function Attack_Actions() local mana=UnitMana('player') for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName('Attack') C=96 return end end if not GotDebuff('Rogue_Trip') and action('Wing Clip') then return end if action('Counterattack') then return end if action('Mongoose Bite') then return end if action('Raptor Strike') then return end end Attack_Actions() 

/script 
local function GotDebuff(name,target) 
	if not target then target = 'target' end 
	local tex,cnt,ix 
	for ix = 1,32 do 
		tex,cnt = UnitDebuff(target,ix) 
		if not tex then return end 
		if strfind(tex,name) then return cnt end 
	end 
end 
local function action(name,self) 
	local ix 
	for ix=1,200 do 
		if GetSpellName(ix,'spell')==name then 
			if GetSpellCooldown(ix,'spell')==0 then CastSpellByName(name,self) return 1 end 
		end 
	end 
end 
function Attack_Actions() 
	local mana=UnitMana('player') 
	for C=1,96 do if IsAttackAction(C) and not IsCurrentAction(C) then CastSpellByName('Attack') C=96 return end end 
	if not GotDebuff('Rogue_Trip') and action('Wing Clip') then return end 
	if action('Counterattack') then return end 
	if action('Mongoose Bite') then return end 
	if action('Raptor Strike') then return end 
end 
Attack_Actions() 