-=PET крушить=-/doom /кара |
/script PetAttack();local SCM=SendChatMessage;local R=math.random();
if "pet" and "target" then PetAttack();local PN=UnitName("pet");local TN=UnitName("target");
if R>=0.0 and R<0.2 then SCM(PN..", attack "..TN);end;
if R>=0.2 and R<0.4 then SCM(PN..", destroy "..TN);end;
if R>=0.6 and R<0.8 then SCM(PN..", ATAKYU "..TN);end;
if R>=0.8 and R<1.0 then SCM(PN..", PA3OPBU "..TN);end;end;

if R>=0.8 and R<0.9 then SCM(PN);DoEmote("openfire",target);end;
if R>=0.9 and R<1 then SCM(PN);DoEmote("charge",target);end;end;

-=PET за мной=-
/script local SCM=SendChatMessage;local R=math.random();
if "pet" then PetStopAttack();PetFollow();local PN=UnitName("pet");
if R>=0 and R<0.4 then SCM(PN);DoEmote("whistle",pet);end;
if R>=0.6 and R<0.6 then SCM(PN..", come to me");end;
if R>=0.7 and R<0.8 then SCM(PN..", come back");end;
if R>=0.8 and R<0.9 then SCM(PN..", KO MHE");end;
if R>=0.9 and R<1.0 then SCM(PN..", BEPHUCb");end;end;
