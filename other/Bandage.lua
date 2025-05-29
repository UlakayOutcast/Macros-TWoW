-=Bandage=-
/script local ix,iz,it,ta=0,0;if CursorHasItem() then while(iz<5)do if not GetContainerItemInfo(iz,ix) then PickupContainerItem(iz,ix);break;end;if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;end;end;local function RH(tar) return UnitHealth(tar)/UnitHealthMax(tar);end;if not CursorHasItem() then iz=0;ix=0;while(iz<5)do it=GetContainerItemInfo(iz,ix);if it then if strfind(it,"Bandage") then if UnitExists("target") and UnitCanAttack("target","player") then ta=1;end;if RH("player")<0.666 then TargetUnit("player");else if RH("target")<0.666 and not UnitCanAttack("target","player") then ta=nil;else if RH("pet")<0.666 then TargetUnit("pet");else if RH("player")<1 then TargetUnit("player");else if RH("target")<1 and not UnitCanAttack("target","player") then ta=nil;else if RH("pet")<1 then TargetUnit("pet");else it=nil;ta=nil;end;end;end;end;end;end;if it then UseContainerItem(iz,ix);end;if ta then TargetLastTarget();end;break;end;end;if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;end;end;

/script local ix,iz,it,ta=0,0;
if CursorHasItem() then 
	while(iz<5)do 
		if not GetContainerItemInfo(iz,ix) then PickupContainerItem(iz,ix);break;end;
		if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
end;
local function RH(tar) return UnitHealth(tar)/UnitHealthMax(tar);end;
if not CursorHasItem() then 
	iz=0;ix=0;
	while(iz<5)do 
		it=GetContainerItemInfo(iz,ix);
		if it then 
			if strfind(it,"Bandage") then 
				if UnitExists("target") and UnitCanAttack("target","player") then ta=1;end;
				if RH("player")<0.666 then TargetUnit("player");
				else 
					if RH("target")<0.666 and not UnitCanAttack("target","player") then ta=nil;
					else 
						if RH("pet")<0.666 then TargetUnit("pet");
						else 
							if RH("player")<1 then TargetUnit("player");
							else 
								if RH("target")<1 and not UnitCanAttack("target","player") then ta=nil;
								else 
									if RH("pet")<1 then TargetUnit("pet");
									else 
										it=nil;ta=nil;
									end;
								end;
							end;
						end;
					end;
				end;
				if it then UseContainerItem(iz,ix);end;
				if ta then TargetLastTarget();end;
				break;
			end;
		end;
		if ix<20 then ix=ix+1;else iz=iz+1;ix=0;end;
	end;
end;