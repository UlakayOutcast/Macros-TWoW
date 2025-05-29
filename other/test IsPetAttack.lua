/script 
for x=1,200 do 
	if GetPetActionInfo(x) == "PET_ACTION_ATTACK" then DEFAULT_CHAT_FRAME:AddMessage(x)
		if IsPetAttackActive(x)then DEFAULT_CHAT_FRAME:AddMessage("y")
			PetFollow()
		else  DEFAULT_CHAT_FRAME:AddMessage("n")
			PetAttack()
		end;
		break;
	end;
end;