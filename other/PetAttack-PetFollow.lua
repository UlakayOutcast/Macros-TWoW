/script if not UnitExists("pettarget") or not UnitIsUnit("pettarget","target") then DEFAULT_CHAT_FRAME:AddMessage("y")PetAttack()else  DEFAULT_CHAT_FRAME:AddMessage("n")()PetFollow()end;

/script 
if not UnitExists("pettarget") or not UnitIsUnit("pettarget","target") then DEFAULT_CHAT_FRAME:AddMessage("y")
	PetAttack()
else  DEFAULT_CHAT_FRAME:AddMessage("n")()
	PetFollow()
end;