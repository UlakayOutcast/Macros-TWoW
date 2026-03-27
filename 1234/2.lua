/script local t,c,f=0,0,0;SwitchAutoBuff=0;print("Anti AFK is now enabled.");
CreateFrame("frame","Anti_AFK_frame",UIParent):SetScript("OnUpdate",
	function() 
		if SwitchAutoBuff==1 then 
			f=GetFramerate();t=t+1;
			if t>=2*f then c=c+1;t=0;
				DEFAULT_CHAT_FRAME:AddMessage(c.."sec");
			end;
		end;
	end
)