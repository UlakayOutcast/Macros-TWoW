-=Rejuvenation=- SuperMacro. Rank в зависимости от уровня играка, его маны и уровня цели.
/script local function GotBuff(name,target) if not target then target = 'target' end local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitBuff(target,ix) if not tex then return end if strfind(tex,name) then return cnt end end end local function action(name,rank) local ix for ix=1,200 do if GetSpellName(ix,'spell')==name then if GetSpellCooldown(ix,'spell')==0 then CastSpellByName(name..rank) return 1 end end end end function Spel_Actions() local UL=UnitLevel;local UM=UnitMana;local CT;if UL('target')==0 or UnitCanAttack('player','target') then CT='player';else CT='target';end;if GotBuff('Rejuvenation',CT) and not GotBuff('ManaBurn','player') then action('Swiftmend','') else if UL('player')>59 and UL(CT)>57 and (UM('player')>360 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 11)') then else if UL('player')>57 and UL(CT)>51 and (UM('player')>335 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 10)') then else if UL('player')>51 and UL(CT)>45 and (UM('player')>280 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 9)') then else if UL('player')>45 and UL(CT)>39 and (UM('player')>235 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 8)') then else if UL('player')>39 and UL(CT)>33 and (UM('player')>195 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 7)') then else if UL('player')>33 and UL(CT)>27 and (UM('player')>160 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 6)') then else if UL('player')>27 and UL(CT)>21 and (UM('player')>135 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 5)') then else if UL('player')>21 and UL(CT)>15 and (UM('player')>105 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 4)') then else if UL('player')>15 and UL(CT)>9 and (UM('player')>75 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 3)') then else if UL('player')>9 and UL(CT)>3 and (UM('player')>40 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 2)') then else if UL('player')>3 and UL(CT)>0 and (UM('player')>25 or buffed('Clearcasting')=='buff')  and action('Rejuvenation','(Rank 1)') then else if nil then CastSpellByName('Rejuvenation')end;end;end;end;end;end;end;end;end;end;end;end;end;end;Spel_Actions() 
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
	if GotBuff('Rejuvenation',CT) and not GotBuff('ManaBurn','player') then action('Swiftmend','') 
	else 
		if UL('player')>59 and UL(CT)>57 and (UM('player')>360 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 11)') then 
		else 
			if UL('player')>57 and UL(CT)>51 and (UM('player')>335 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 10)') then 
			else 
				if UL('player')>51 and UL(CT)>45 and (UM('player')>280 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 9)') then 
				else 
					if UL('player')>45 and UL(CT)>39 and (UM('player')>235 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 8)') then 
					else 
						if UL('player')>39 and UL(CT)>33 and (UM('player')>195 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 7)') then 
						else 
							if UL('player')>33 and UL(CT)>27 and (UM('player')>160 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 6)') then 
							else 
								if UL('player')>27 and UL(CT)>21 and (UM('player')>135 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 5)') then 
								else 
									if UL('player')>21 and UL(CT)>15 and (UM('player')>105 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 4)') then 
									else 
										if UL('player')>15 and UL(CT)>9 and (UM('player')>75 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 3)') then 
										else 
											if UL('player')>9 and UL(CT)>3 and (UM('player')>40 or buffed('Clearcasting')=='buff') and action('Rejuvenation','(Rank 2)') then 
											else 
												if UL('player')>3 and UL(CT)>0 and (UM('player')>25 or buffed('Clearcasting')=='buff')  and action('Rejuvenation','(Rank 1)') then 
												else if nil then CastSpellByName('Rejuvenation')end;end;
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
	end;
end;
Spel_Actions() 


-=Rejuvenation=- Rank в зависимости от уровня играка, его маны, уровня цели и отсутствующего здоровья цели.
/script local function GotBuff(name,target) if not target then target = 'target' end local tex,cnt,ix for ix = 1,32 do tex,cnt = UnitBuff(target,ix) if not tex then return end if strfind(tex,name) then return cnt end end end local function action(name,rank) local ix for ix=1,200 do if GetSpellName(ix,'spell')==name then if GetSpellCooldown(ix,'spell')==0 then CastSpellByName(name..rank) return 1 end end end end function Spel_Actions() local UL=UnitLevel;local UM=UnitMana;local CT;if UL('target')==0 or UnitCanAttack('player','target') then CT='player';else CT='target';end;if GotBuff('Rejuvenation',CT) and not GotBuff('ManaBurn','player') then action('Swiftmend','') else local AH=UnitHealthMax(CT)-UnitHealth(CT);if UL('player')>59 and UL(CT)>57 and (UM('player')>360 or buffed('Clearcasting')=='buff') and AH>756 and action('Rejuvenation','(Rank 11)') then else if UL('player')>57 and UL(CT)>51 and (UM('player')>335 or buffed('Clearcasting')=='buff') and AH>608 and action('Rejuvenation','(Rank 10)') then else if UL('player')>51 and UL(CT)>45 and (UM('player')>280 or buffed('Clearcasting')=='buff') and AH>488 and action('Rejuvenation','(Rank 9)') then else if UL('player')>45 and UL(CT)>39 and (UM('player')>235 or buffed('Clearcasting')=='buff') and AH>388 and action('Rejuvenation','(Rank 8)') then else if UL('player')>39 and UL(CT)>33 and (UM('player')>195 or buffed('Clearcasting')=='buff') and AH>304 and action('Rejuvenation','(Rank 7)') then else if UL('player')>33 and UL(CT)>27 and (UM('player')>160 or buffed('Clearcasting')=='buff') and AH>244 and action('Rejuvenation','(Rank 6)') then else if UL('player')>27 and UL(CT)>21 and (UM('player')>135 or buffed('Clearcasting')=='buff') and AH>180 and action('Rejuvenation','(Rank 5)') then else if UL('player')>21 and UL(CT)>15 and (UM('player')>105 or buffed('Clearcasting')=='buff') and AH>116 and action('Rejuvenation','(Rank 4)') then else if UL('player')>15 and UL(CT)>9 and (UM('player')>75 or buffed('Clearcasting')=='buff') and AH>56 and action('Rejuvenation','(Rank 3)') then else if UL('player')>9 and UL(CT)>3 and (UM('player')>40 or buffed('Clearcasting')=='buff') and AH>56 and action('Rejuvenation','(Rank 2)') then else if UL('player')>3 and UL(CT)>0 and (UM('player')>25 or buffed('Clearcasting')=='buff') and AH>32  and action('Rejuvenation','(Rank 1)') then else if nil then CastSpellByName('Rejuvenation')end;end;end;end;end;end;end;end;end;end;end;end;end;end;Spel_Actions() 
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
	if GotBuff('Rejuvenation',CT) and not GotBuff('ManaBurn','player') then action('Swiftmend','') 
	else 
		local AH=UnitHealthMax(CT)-UnitHealth(CT);
		if UL('player')>59 and UL(CT)>57 and (UM('player')>360 or buffed('Clearcasting')=='buff') and AH>756 and action('Rejuvenation','(Rank 11)') then 
		else 
			if UL('player')>57 and UL(CT)>51 and (UM('player')>335 or buffed('Clearcasting')=='buff') and AH>608 and action('Rejuvenation','(Rank 10)') then 
			else 
				if UL('player')>51 and UL(CT)>45 and (UM('player')>280 or buffed('Clearcasting')=='buff') and AH>488 and action('Rejuvenation','(Rank 9)') then 
				else 
					if UL('player')>45 and UL(CT)>39 and (UM('player')>235 or buffed('Clearcasting')=='buff') and AH>388 and action('Rejuvenation','(Rank 8)') then 
					else 
						if UL('player')>39 and UL(CT)>33 and (UM('player')>195 or buffed('Clearcasting')=='buff') and AH>304 and action('Rejuvenation','(Rank 7)') then 
						else 
							if UL('player')>33 and UL(CT)>27 and (UM('player')>160 or buffed('Clearcasting')=='buff') and AH>244 and action('Rejuvenation','(Rank 6)') then 
							else 
								if UL('player')>27 and UL(CT)>21 and (UM('player')>135 or buffed('Clearcasting')=='buff') and AH>180 and action('Rejuvenation','(Rank 5)') then 
								else 
									if UL('player')>21 and UL(CT)>15 and (UM('player')>105 or buffed('Clearcasting')=='buff') and AH>116 and action('Rejuvenation','(Rank 4)') then 
									else 
										if UL('player')>15 and UL(CT)>9 and (UM('player')>75 or buffed('Clearcasting')=='buff') and AH>56 and action('Rejuvenation','(Rank 3)') then 
										else 
											if UL('player')>9 and UL(CT)>3 and (UM('player')>40 or buffed('Clearcasting')=='buff') and AH>56 and action('Rejuvenation','(Rank 2)') then 
											else 
												if UL('player')>3 and UL(CT)>0 and (UM('player')>25 or buffed('Clearcasting')=='buff') and AH>32  and action('Rejuvenation','(Rank 1)') then 
												else if nil then CastSpellByName('Rejuvenation')end;end;
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
	end;
end;
Spel_Actions() 