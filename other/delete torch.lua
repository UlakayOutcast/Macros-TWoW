!ВНИМАНИЕ! Это удалит всё, что выглядит как факел, из инвентаря.
/script local ix,iz,it=0,0;if not CursorHasItem()then while(iz<5)do it=GetContainerItemInfo(iz,ix)if it then if strfind(it,"INV_Torch_Lit")then PickupContainerItem(iz,ix)DeleteCursorItem()end;end;if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;end;end;

/script local ix,iz,it=0,0;
if not CursorHasItem()then 
	while(iz<5)do 
		it=GetContainerItemInfo(iz,ix)
		if it then 
			if strfind(it,"INV_Torch_Lit")then 
				PickupContainerItem(iz,ix)
				DeleteCursorItem()
			end;
		end;
		if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
end;
