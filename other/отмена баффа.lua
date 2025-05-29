/script local i=0 g=GetPlayerBuff while not(g(i) == -1)do if(strfind(GetPlayerBuffTexture(g(i)), "Spell_Frost_FrostArmor"))then CancelPlayerBuff(g(i))end i=i+1 end

/script 
local i=0 g=GetPlayerBuff 
while not(g(i) == -1)do 
	if(strfind(GetPlayerBuffTexture(g(i)), "Spell_Frost_FrostArmor"))then 
		CancelPlayerBuff(g(i))
		end 
	i=i+1 
end