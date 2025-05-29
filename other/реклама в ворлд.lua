рекламма в ворлд чат с автопоиском канала. скрипт для SuperMacro или аналог

/script local c,id;for c=1,10 do id,name = GetChannelName(c);if name=="world"then SendChatMessage("тут должна быть ваша рекламма на 255 символов","CHANNEL",nil,id);SendChatMessage("если требуется дополнительная строчка, иначе оставить пустым","CHANNEL",nil,id);end;end;

/script local c,id;
for c=1,10 do 
	id,name = GetChannelName(c);
	if name=="world"then 
		SendChatMessage("тут должна быть ваша рекламма на 255 символов","CHANNEL",nil,id);
		SendChatMessage("если требуется дополнительная строчка, иначе оставить пустым","CHANNEL",nil,id);
	end;
end;