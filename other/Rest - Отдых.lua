Rest - Отдых

Отображение % уровня отдыха в чате 
/script local Rest=format("%.0f",GetXPExhaustion()/UnitXPMax("player")*100);DEFAULT_CHAT_FRAME:AddMessage("Rest = "..Rest.."%")

Отображение количество опыта и % уровня отдыха в инфо чате
/script local RX,RP=GetXPExhaustion();RP=format("%.0f",RX/UnitXPMax("player")*100);DEFAULT_CHAT_FRAME:AddMessage("Rest = "..RP.."% / "..RX.."xp")