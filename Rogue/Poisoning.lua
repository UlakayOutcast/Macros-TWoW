
[Instant Poison]
/script local ix,iz,it,ta=0,0;if CursorHasItem() then while(iz<5)do if not GetContainerItemInfo(iz,ix) then PickupContainerItem(iz,ix);break;end;if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;end;end;if not CursorHasItem() then iz=0;ix=0;while(iz<5)do it=GetContainerItemInfo(iz,ix);if it then if strfind(it,"Ability_Poisons") then local hasMainHandEnchant,mainHandExpiration,mainHandCharges,mainHandEnchantID,hasOffHandEnchant,offHandExpiration,offHandCharges=GetWeaponEnchantInfo();if GetInventoryItemTexture("player",16) and (hasMainHandEnchant==nil or mainHandExpiration<=60000 or mainHandCharges<=2) then UseContainerItem(iz,ix);PickupInventoryItem(16);else if GetInventoryItemTexture("player",17) and (hasOffHandEnchant==nil or offHandExpiration<=60000 or offHandCharges<=2) then UseContainerItem(iz,ix);PickupInventoryItem(17);end;end;break;end;end;if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;end;end;

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
			if strfind(it,"Ability_Poisons") then 
				local hasMainHandEnchant,mainHandExpiration,mainHandCharges,mainHandEnchantID,hasOffHandEnchant,offHandExpiration,offHandCharges=GetWeaponEnchantInfo();
				if GetInventoryItemTexture("player",16) and (hasMainHandEnchant==nil or mainHandExpiration<=60000 or mainHandCharges<=2) then 
					UseContainerItem(iz,ix);
					PickupInventoryItem(16);
				else 
					if GetInventoryItemTexture("player",17) and (hasOffHandEnchant==nil or offHandExpiration<=60000 or offHandCharges<=2) then 
						UseContainerItem(iz,ix);
						PickupInventoryItem(17);
					end;
				end;
				break;
			end;
		end;
		if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
end;



/script local ix,iz,it,ta=0,0;if CursorHasItem() then while(iz<5)do if not GetContainerItemInfo(iz,ix) then PickupContainerItem(iz,ix);break;end;if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;end;end;if not CursorHasItem() then iz=0;ix=0;while(iz<5)do it=GetContainerItemInfo(iz,ix);if it then if strfind(it,"Ability_Rogue_DualWeild") then local hasMainHandEnchant,mainHandExpiration,mainHandCharges,mainHandEnchantID,hasOffHandEnchant,offHandExpiration,offHandCharges=GetWeaponEnchantInfo();if GetInventoryItemTexture("player",16) and (hasMainHandEnchant==nil or mainHandExpiration<=60000 or mainHandCharges<=2) then UseContainerItem(iz,ix);PickupInventoryItem(16);else if GetInventoryItemTexture("player",17) and (hasOffHandEnchant==nil or offHandExpiration<=60000 or offHandCharges<=2) then UseContainerItem(iz,ix);PickupInventoryItem(17);end;end;break;end;end;if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;end;end;

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
			if strfind(it,"Ability_Rogue_DualWeild") then 
				local hasMainHandEnchant,mainHandExpiration,mainHandCharges,mainHandEnchantID,hasOffHandEnchant,offHandExpiration,offHandCharges=GetWeaponEnchantInfo();
				if GetInventoryItemTexture("player",16) and (hasMainHandEnchant==nil or mainHandExpiration<=60000 or mainHandCharges<=2) then 
					UseContainerItem(iz,ix);
					PickupInventoryItem(16);
				else 
					if GetInventoryItemTexture("player",17) and (hasOffHandEnchant==nil or offHandExpiration<=60000 or offHandCharges<=2) then 
						UseContainerItem(iz,ix);
						PickupInventoryItem(17);
					end;
				end;
				break;
			end;
		end;
		if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
end;


[Dissolvent Poison]
/script local ix,iz,it,ta=0,0;if CursorHasItem() then while(iz<5)do if not GetContainerItemInfo(iz,ix) then PickupContainerItem(iz,ix);break;end;if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;end;end;if not CursorHasItem() then iz=0;ix=0;while(iz<5)do it=GetContainerItemInfo(iz,ix);if it then if strfind(it,"Spell_Nature_SlowPoison") then local hasMainHandEnchant,mainHandExpiration,mainHandCharges,mainHandEnchantID,hasOffHandEnchant,offHandExpiration,offHandCharges=GetWeaponEnchantInfo();if GetInventoryItemTexture("player",16) and (hasMainHandEnchant==nil or mainHandExpiration<=60000 or mainHandCharges<=2) then UseContainerItem(iz,ix);PickupInventoryItem(16);else if GetInventoryItemTexture("player",17) and (hasOffHandEnchant==nil or offHandExpiration<=60000 or offHandCharges<=2) then UseContainerItem(iz,ix);PickupInventoryItem(17);end;end;break;end;end;if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;end;end;

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
			if strfind(it,"Spell_Nature_SlowPoison") then 
				local hasMainHandEnchant,mainHandExpiration,mainHandCharges,mainHandEnchantID,hasOffHandEnchant,offHandExpiration,offHandCharges=GetWeaponEnchantInfo();
				if GetInventoryItemTexture("player",16) and (hasMainHandEnchant==nil or mainHandExpiration<=60000 or mainHandCharges<=2) then 
					UseContainerItem(iz,ix);
					PickupInventoryItem(16);
				else 
					if GetInventoryItemTexture("player",17) and (hasOffHandEnchant==nil or offHandExpiration<=60000 or offHandCharges<=2) then 
						UseContainerItem(iz,ix);
						PickupInventoryItem(17);
					end;
				end;
				break;
			end;
		end;
		if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
end;