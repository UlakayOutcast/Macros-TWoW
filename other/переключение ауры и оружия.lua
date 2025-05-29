Переключает ауру паладина и оружие. оружие должно находится в 4й сумке 2 слота, а щит 4й сумке 3 слота.
/script local C,SW=0;if CursorHasItem() then SW=1;if SW then for C=0,16 do if not GetContainerItemInfo(0,C) then PickupContainerItem(0,C);C=16;SW=0;end;end;end;if SW then for C=0,16 do if not GetContainerItemInfo(1,C) then PickupContainerItem(1,C);C=16;SW=0;end;end;end;if SW then for C=0,16 do if not GetContainerItemInfo(2,C) then PickupContainerItem(2,C);C=16;SW=0;end;end;end;if SW then for C=0,16 do if not GetContainerItemInfo(3,C) then PickupContainerItem(3,C);C=16;SW=0;end;end;end;if SW then for C=0,16 do if not GetContainerItemInfo(4,C) then PickupContainerItem(4,C);C=16;SW=0;end;end;end;end;if buffed("Devotion Aura")~="buff" then CastSpellByName("Devotion Aura");PickupInventoryItem(17);if CursorHasItem() then PickupInventoryItem(17);else PickupContainerItem(4,2);PickupInventoryItem(16);PickupContainerItem(4,3);PickupInventoryItem(17);end;else CastSpellByName("Retribution Aura");PickupInventoryItem(17);if CursorHasItem() then PickupContainerItem(4,3);end;PickupContainerItem(4,2);PickupInventoryItem(16);end;

-=- разложенный вид
/script local C,SW=0;
if CursorHasItem() then 
	SW=1;
	if SW then for C=0,16 do if not GetContainerItemInfo(0,C) then PickupContainerItem(0,C);C=16;SW=0;end;end;end;
	if SW then for C=0,16 do if not GetContainerItemInfo(1,C) then PickupContainerItem(1,C);C=16;SW=0;end;end;end;
	if SW then for C=0,16 do if not GetContainerItemInfo(2,C) then PickupContainerItem(2,C);C=16;SW=0;end;end;end;
	if SW then for C=0,16 do if not GetContainerItemInfo(3,C) then PickupContainerItem(3,C);C=16;SW=0;end;end;end;
	if SW then for C=0,16 do if not GetContainerItemInfo(4,C) then PickupContainerItem(4,C);C=16;SW=0;end;end;end;
end;
if buffed("Devotion Aura")~="buff" then 
	CastSpellByName("Devotion Aura");
	PickupInventoryItem(17);
	if CursorHasItem() then PickupInventoryItem(17);
	else 
		PickupContainerItem(4,2);PickupInventoryItem(16);PickupContainerItem(4,3);PickupInventoryItem(17);
	end;
else 
	CastSpellByName("Retribution Aura");
	PickupInventoryItem(17);
	if CursorHasItem() then PickupContainerItem(4,3);end;
	PickupContainerItem(4,2);PickupInventoryItem(16);
end;