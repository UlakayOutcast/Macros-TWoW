-=Regrowth=- SuperMacro. Rank в зависимости от уровня играка, его маны и уровня цели. С зажатым Alt используется "Nature's Swiftness"
/script local function GotBuff(name,target) if not target then target = 'target' end local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitBuff(target,ix) if not tex then return end if strfind(tex,name) then return cnt end end end local function action(name,rank) local ix for ix=1,200 do if GetSpellName(ix,'spell')==name then if GetSpellCooldown(ix,'spell')==0 then CastSpellByName(name..rank) return 1 end end end end function Spel_Actions() local UL=UnitLevel;local UM=UnitMana;local CT;if UL('target')==0 or UnitCanAttack('player','target') then CT='player';else CT='target';end;if GotBuff('ResistNature',CT) and action('Swiftmend','0') and not GotBuff('ManaBurn') then action('Swiftmend','') else if IsAltKeyDown() and action("Nature's Swiftness","") then return end;if UL('player')>59 and UL(CT)>53 and (UM('player')>880 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 9)') then else if UL('player')>53 and UL(CT)>47 and (UM('player')>740 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 8)') then else if UL('player')>47 and UL(CT)>415 and (UM('player')>615 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 7)') then else if UL('player')>41 and UL(CT)>35 and (UM('player')>510 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 6)') then else if UL('player')>35 and UL(CT)>29 and (UM('player')>420 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 5)') then else if UL('player')>29 and UL(CT)>23 and (UM('player')>350 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 4)') then else if UL('player')>23 and UL(CT)>17 and (UM('player')>280 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 3)') then else if UL('player')>17 and UL(CT)>11 and (UM('player')>205 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 2)') then else if UL('player')>11 and UL(CT)>0 and (UM('player')>120 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 1)') then else if nil then CastSpellByName('Regrowth')end;end;end;end;end;end;end;end;end;end;end;end;Spel_Actions() 
-=-
/script 
local function GotBuff(name,target) 
	if not target then target = 'target' end 
	local tex,cnt,ix 
	for ix = 1,32 do 
		tex,cnt = UnitBuff(target,ix) 
		if not tex then return end 
		if strfind(tex,name) then return cnt end 
	end 
end 
local function action(name,rank) 
	local ix 
	for ix=1,200 do 
		if GetSpellName(ix,'spell')==name then 
			if GetSpellCooldown(ix,'spell')==0 then 
				CastSpellByName(name..rank) 
				return 1 
			end 
		end 
	end 
end 
function Spel_Actions() 
	local UL=UnitLevel;local UM=UnitMana;local CT;
	if UL('target')==0 or UnitCanAttack('player','target') then CT='player';else CT='target';end;
	if GotBuff('ResistNature',CT) and action('Swiftmend','0') and not GotBuff('ManaBurn') then action('Swiftmend','') 
	else 
		if IsAltKeyDown() and action("Nature's Swiftness","") then return end;
		if UL('player')>59 and UL(CT)>53 and (UM('player')>880 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 9)') then 
		else 
			if UL('player')>53 and UL(CT)>47 and (UM('player')>740 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 8)') then 
			else 
				if UL('player')>47 and UL(CT)>415 and (UM('player')>615 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 7)') then 
				else 
					if UL('player')>41 and UL(CT)>35 and (UM('player')>510 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 6)') then 
					else 
						if UL('player')>35 and UL(CT)>29 and (UM('player')>420 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 5)') then 
						else 
							if UL('player')>29 and UL(CT)>23 and (UM('player')>350 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 4)') then 
							else 
								if UL('player')>23 and UL(CT)>17 and (UM('player')>280 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 3)') then 
								else 
									if UL('player')>17 and UL(CT)>11 and (UM('player')>205 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 2)') then 
									else 
										if UL('player')>11 and UL(CT)>0 and (UM('player')>120 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 1)') then 
										else if nil then CastSpellByName('Regrowth')end;end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end;
Spel_Actions() 


-=Regrowth=- Rank в зависимости от уровня играка, его маны, уровня цели и отсутствующего здоровья цели. С зажатым Alt используется "Nature's Swiftness"
/script local function GotBuff(name,target) if not target then target = 'target' end local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitBuff(target,ix) if not tex then return end if strfind(tex,name) then return cnt end end end local function action(name,rank) local ix for ix=1,200 do if GetSpellName(ix,'spell')==name then if GetSpellCooldown(ix,'spell')==0 then CastSpellByName(name..rank) return 1 end end end end function Spel_Actions() local UL=UnitLevel;local UM=UnitMana;local CT;if UL('target')==0 or UnitCanAttack('player','target') then CT='player';else CT='target';end;if GotBuff('ResistNature') and not GotBuff('ManaBurn') then action('Swiftmend','') else if IsAltKeyDown() and action("Nature's Swiftness","") then return end;local AH=UnitHealthMax(CT)-UnitHealth(CT);if UL('player')>59 and UL(CT)>53 and AH>1003 and (UM('player')>880 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 9)') then else if UL('player')>53 and UL(CT)>47 and AH>809 and (UM('player')>740 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 8)') then else if UL('player')>47 and UL(CT)>415 and AH>646 and (UM('player')>615 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 7)') then else if UL('player')>41 and UL(CT)>35 and AH>511 and (UM('player')>510 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 6)') then else if UL('player')>35 and UL(CT)>29 and AH>405 and (UM('player')>420 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 5)') then else if UL('player')>29 and UL(CT)>23 and AH>318 and (UM('player')>350 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 4)') then else if UL('player')>23 and UL(CT)>17 and AH>240 and (UM('player')>280 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 3)') then else if UL('player')>17 and UL(CT)>11 and AH>164 and (UM('player')>205 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 2)') then else if UL('player')>11 and UL(CT)>0 and AH>84 and (UM('player')>120 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 1)') then else if nil then CastSpellByName('Regrowth')end;end;end;end;end;end;end;end;end;end;end;end;Spel_Actions() 
-=-
/script 
local function GotBuff(name,target) 
	if not target then target = 'target' end 
	local tex,cnt,ix 
	for ix = 1,32 do 
		tex,cnt = UnitBuff(target,ix) 
		if not tex then return end 
		if strfind(tex,name) then return cnt end 
	end 
end 
local function action(name,rank) 
	local ix 
	for ix=1,200 do 
		if GetSpellName(ix,'spell')==name then 
			if GetSpellCooldown(ix,'spell')==0 then 
				CastSpellByName(name..rank) 
				return 1 
			end 
		end 
	end 
end 
function Spel_Actions() 
	local UL=UnitLevel;local UM=UnitMana;local CT;
	if UL('target')==0 or UnitCanAttack('player','target') then CT='player';else CT='target';end;
	if GotBuff('ResistNature') and not GotBuff('ManaBurn') then action('Swiftmend','') 
	else 
		if IsAltKeyDown() and action("Nature's Swiftness","") then return end;
		local AH=UnitHealthMax(CT)-UnitHealth(CT);
		if UL('player')>59 and UL(CT)>53 and AH>1003 and (UM('player')>880 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 9)') then 
		else 
			if UL('player')>53 and UL(CT)>47 and AH>809 and (UM('player')>740 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 8)') then 
			else 
				if UL('player')>47 and UL(CT)>415 and AH>646 and (UM('player')>615 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 7)') then 
				else 
					if UL('player')>41 and UL(CT)>35 and AH>511 and (UM('player')>510 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 6)') then 
					else 
						if UL('player')>35 and UL(CT)>29 and AH>405 and (UM('player')>420 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 5)') then 
						else 
							if UL('player')>29 and UL(CT)>23 and AH>318 and (UM('player')>350 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 4)') then 
							else 
								if UL('player')>23 and UL(CT)>17 and AH>240 and (UM('player')>280 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 3)') then 
								else 
									if UL('player')>17 and UL(CT)>11 and AH>164 and (UM('player')>205 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 2)') then 
									else 
										if UL('player')>11 and UL(CT)>0 and AH>84 and (UM('player')>120 or buffed('Clearcasting')=='buff') and action('Regrowth','(Rank 1)') then 
										else if nil then CastSpellByName('Regrowth')end;end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end;
Spel_Actions() 