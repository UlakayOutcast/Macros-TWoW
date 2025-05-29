/script local ix,iz,it=0,0;
while(iz<5)do 
	it=GetContainerItemInfo(iz,ix)
	if it then 
		if strfind(it,"inv_misc_food_55")then 
			UseContainerItem(iz,ix);break;
		end;
	end;
	if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;
end;