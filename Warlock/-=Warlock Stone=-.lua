-=Warlock Stone=-

-=Create and use Felstone=-
/script local ix,iz,it,ta=0,0;if CursorHasItem() then while(iz<5)do if not GetContainerItemInfo(iz,ix) then PickupContainerItem(iz,ix);break;end;if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;end;end;if not CursorHasItem() then iz=0;ix=0;while(iz<5)do it=GetContainerItemInfo(iz,ix);if it then if string.find(it,"inv_misc_gem_felstone") then UseContainerItem(iz,ix);break;end;end;if ix<24 then ix=ix+1;else iz=iz+1;ix=0;end;end;if iz==5 then CastSpellByName("Create Felstone");end;end;

/script local ix,iz,it,ta=0,0;
if CursorHasItem() then 
	while(iz<5)do 
		if not GetContainerItemInfo(iz,ix) then PickupContainerItem(iz,ix);break;end;
		if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
end;
if not CursorHasItem() then 
	iz=0;ix=0;
	while(iz<5)do 
		it=GetContainerItemInfo(iz,ix);
		if it then 
			if string.find(it,"inv_misc_gem_felstone") then UseContainerItem(iz,ix);break;end;
		end;
		if ix<24 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
	if iz==5 then CastSpellByName("Create Felstone");end;
end;

-=-

-=Create and use Firestone=-
/script local ix,iz,it,ta=0,0;if CursorHasItem() then while(iz<5)do if not GetContainerItemInfo(iz,ix) then PickupContainerItem(iz,ix);break;end;if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;end;end;if not CursorHasItem() then iz=0;ix=0;while(iz<5)do it=GetContainerItemInfo(iz,ix);if it then if string.find(it,"INV_Ammo_FireTar") then UseContainerItem(iz,ix);break;end;end;if ix<24 then ix=ix+1;else iz=iz+1;ix=0;end;end;if iz==5 then CastSpellByName("Create Firestone");end;end;

/script local ix,iz,it,ta=0,0;
if CursorHasItem() then 
	while(iz<5)do 
		if not GetContainerItemInfo(iz,ix) then PickupContainerItem(iz,ix);break;end;
		if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
end;
if not CursorHasItem() then 
	iz=0;ix=0;
	while(iz<5)do 
		it=GetContainerItemInfo(iz,ix);
		if it then 
			if string.find(it,"INV_Ammo_FireTar") then UseContainerItem(iz,ix);break;end;
		end;
		if ix<24 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
	if iz==5 then CastSpellByName("Create Firestone");end;
end;

-=-

-=Create and use Spellstone=-
/script local ix,iz,it,ta=0,0;if CursorHasItem() then while(iz<5)do if not GetContainerItemInfo(iz,ix) then PickupContainerItem(iz,ix);break;end;if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;end;end;if not CursorHasItem() then iz=0;ix=0;while(iz<5)do it=GetContainerItemInfo(iz,ix);if it then if string.find(it,"INV_Misc_Gem_Sapphire_01") then UseContainerItem(iz,ix);break;end;end;if ix<24 then ix=ix+1;else iz=iz+1;ix=0;end;end;if iz==5 then CastSpellByName("Create Spellstone");end;end;

/script local ix,iz,it,ta=0,0;
if CursorHasItem() then 
	while(iz<5)do 
		if not GetContainerItemInfo(iz,ix) then PickupContainerItem(iz,ix);break;end;
		if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
end;
if not CursorHasItem() then 
	iz=0;ix=0;
	while(iz<5)do 
		it=GetContainerItemInfo(iz,ix);
		if it then 
			if string.find(it,"INV_Misc_Gem_Sapphire_01") then UseContainerItem(iz,ix);break;end;
		end;
		if ix<24 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
	if iz==5 then CastSpellByName("Create Spellstone");end;
end;

-=-

-=Create and use Wrathstone=-
/script local ix,iz,it,ta=0,0;if CursorHasItem() then while(iz<5)do if not GetContainerItemInfo(iz,ix) then PickupContainerItem(iz,ix);break;end;if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;end;end;if not CursorHasItem() then iz=0;ix=0;while(iz<5)do it=GetContainerItemInfo(iz,ix);if it then if string.find(it,"INV_Misc_Gem_Bloodstone_02") then UseContainerItem(iz,ix);break;end;end;if ix<24 then ix=ix+1;else iz=iz+1;ix=0;end;end;if iz==5 then CastSpellByName("Create Wrathstone");end;end;

/script local ix,iz,it,ta=0,0;
if CursorHasItem() then 
	while(iz<5)do 
		if not GetContainerItemInfo(iz,ix) then PickupContainerItem(iz,ix);break;end;
		if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
end;
if not CursorHasItem() then 
	iz=0;ix=0;
	while(iz<5)do 
		it=GetContainerItemInfo(iz,ix);
		if it then 
			if string.find(it,"INV_Misc_Gem_Bloodstone_02") then UseContainerItem(iz,ix);break;end;
		end;
		if ix<24 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
	if iz==5 then CastSpellByName("Create Wrathstone");end;
end;

-=Create and use Healthstone=-
/script local ix,iz,it,ta=0,0;if CursorHasItem() then while(iz<5)do if not GetContainerItemInfo(iz,ix) then PickupContainerItem(iz,ix);break;end;if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;end;end;local function GotSpell(spell) local ix,spellName,spellRank;for ix=1,200 do spellName=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell then return ix;end;end;end;end;if not CursorHasItem() then iz=0;ix=0;while(iz<5)do it=GetContainerItemInfo(iz,ix);if it then if string.find(it,"INV_Stone_04") then UseContainerItem(iz,ix);break;end;end;if ix<24 then ix=ix+1;else iz=iz+1;ix=0;end;end;if iz==5 then if GotSpell("Create Healthstone (Major)") then CastSpell(GotSpell("Create Healthstone (Major)"),1);else if GotSpell("Create Healthstone (Greater)") then CastSpell(GotSpell("Create Healthstone (Greater)"),1);else if GotSpell("Create Healthstone") then CastSpell(GotSpell("Create Healthstone"),1);else if GotSpell("Create Healthstone (Lesser)") then CastSpell(GotSpell("Create Healthstone (Lesser)"),1);else if GotSpell("Create Healthstone (Minor)") then CastSpell(GotSpell("Create Healthstone (Minor)"),1);end;end;end;end;end;end;end;if nil then CastSpellByName("Create Healthstone (Major)");CastSpellByName("Create Healthstone (Greater)");CastSpellByName("Create Healthstone");CastSpellByName("Create Healthstone (Lesser)");CastSpellByName("Create Healthstone (Minor)");end;

/script local ix,iz,it,ta=0,0;
if CursorHasItem() then 
	while(iz<5)do 
		if not GetContainerItemInfo(iz,ix) then PickupContainerItem(iz,ix);break;end;
		if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
end;
local function GotSpell(spell) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell then return ix;end;
		end;
	end;
end;
if not CursorHasItem() then 
	iz=0;ix=0;
	while(iz<5)do 
		it=GetContainerItemInfo(iz,ix);
		if it then 
			if string.find(it,"INV_Stone_04") then UseContainerItem(iz,ix);break;end;
		end;
		if ix<24 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
	if iz==5 then 
		if GotSpell("Create Healthstone (Major)") then CastSpell(GotSpell("Create Healthstone (Major)"),1);
		else 
			if GotSpell("Create Healthstone (Greater)") then CastSpell(GotSpell("Create Healthstone (Greater)"),1);
			else 
				if GotSpell("Create Healthstone") then CastSpell(GotSpell("Create Healthstone"),1);
				else 
					if GotSpell("Create Healthstone (Lesser)") then CastSpell(GotSpell("Create Healthstone (Lesser)"),1);
					else 
						if GotSpell("Create Healthstone (Minor)") then CastSpell(GotSpell("Create Healthstone (Minor)"),1);end;
					end;
				end;
			end;
		end;
	end;
end;
if nil then CastSpellByName("Create Healthstone (Major)");CastSpellByName("Create Healthstone (Greater)");CastSpellByName("Create Healthstone");CastSpellByName("Create Healthstone (Lesser)");CastSpellByName("Create Healthstone (Minor)");end;

-=Create and use Soulstone=-
/script local ix,iz,it,ta=0,0;if CursorHasItem() then while(iz<5)do if not GetContainerItemInfo(iz,ix) then PickupContainerItem(iz,ix);break;end;if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;end;end;local function GotSpell(spell) local ix,spellName,spellRank;for ix=1,200 do spellName=GetSpellName(ix,"spell") if spellName==nil then return;else if spellName==spell then return ix;end;end;end;end;if not CursorHasItem() then iz=0;ix=0;while(iz<5)do it=GetContainerItemInfo(iz,ix);if it then if string.find(it,"INV_Misc_Orb_04") then UseContainerItem(iz,ix);break;end;end;if ix<24 then ix=ix+1;else iz=iz+1;ix=0;end;end;if iz==5 then if GotSpell("Create Soulstone (Major)") then CastSpell(GotSpell("Create Soulstone (Major)"),1);else if GotSpell("Create Soulstone (Greater)") then CastSpell(GotSpell("Create Soulstone (Greater)"),1);else if GotSpell("Create Soulstone") then CastSpell(GotSpell("Create Soulstone"),1);else if GotSpell("Create Soulstone (Lesser)") then CastSpell(GotSpell("Create Soulstone (Lesser)"),1);else if GotSpell("Create Soulstone (Minor)") then CastSpell(GotSpell("Create Soulstone (Minor)"),1);end;end;end;end;end;end;end;if nil then CastSpellByName("Create Soulstone (Major)");CastSpellByName("Create Soulstone (Greater)");CastSpellByName("Create Soulstone");CastSpellByName("Create Soulstone (Lesser)");CastSpellByName("Create Soulstone (Minor)");end;

/script local ix,iz,it,ta=0,0;
if CursorHasItem() then 
	while(iz<5)do 
		if not GetContainerItemInfo(iz,ix) then PickupContainerItem(iz,ix);break;end;
		if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
end;
local function GotSpell(spell) 
	local ix,spellName,spellRank;
	for ix=1,200 do spellName=GetSpellName(ix,"spell") 
		if spellName==nil then return;
		else 
			if spellName==spell then return ix;end;
		end;
	end;
end;
if not CursorHasItem() then 
	iz=0;ix=0;
	while(iz<5)do 
		it=GetContainerItemInfo(iz,ix);
		if it then 
			if string.find(it,"INV_Misc_Orb_04") then UseContainerItem(iz,ix);break;end;
		end;
		if ix<24 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
	if iz==5 then 
		if GotSpell("Create Soulstone (Major)") then CastSpell(GotSpell("Create Soulstone (Major)"),1);
		else 
			if GotSpell("Create Soulstone (Greater)") then CastSpell(GotSpell("Create Soulstone (Greater)"),1);
			else 
				if GotSpell("Create Soulstone") then CastSpell(GotSpell("Create Soulstone"),1);
				else 
					if GotSpell("Create Soulstone (Lesser)") then CastSpell(GotSpell("Create Soulstone (Lesser)"),1);
					else 
						if GotSpell("Create Soulstone (Minor)") then CastSpell(GotSpell("Create Soulstone (Minor)"),1);end;
					end;
				end;
			end;
		end;
	end;
end;
if nil then CastSpellByName("Create Soulstone (Major)");CastSpellByName("Create Soulstone (Greater)");CastSpellByName("Create Soulstone");CastSpellByName("Create Soulstone (Lesser)");CastSpellByName("Create Soulstone (Minor)");end;
