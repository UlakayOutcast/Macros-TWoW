/script local hasMainHandEnchant,mainHandExpiration,mainHandCharges,mainHandEnchantID,hasOffHandEnchant,offHandExpiration,offHandCharges=GetWeaponEnchantInfo()print(hasMainHandEnchant)print(mainHandExpiration)print(mainHandCharges)print(mainHandEnchantID)print(hasOffHandEnchant)print(offHandExpiration)print(offHandCharges)print(offHandEnchantID)

hasMainHandEnchant
    Логическое значение — 1, если на основном оружии имеется зачарование, ноль, если зачарования нет. 
mainHandExpiration
    Число — продолжительность зачарования основного оружия в МИЛЛИСЕКУНДАХ, ноль, если зачарования нет. 
mainHandCharges
    Число — количество зарядов основного оружия, 0, если зарядов нет, ноль, если нет чар. 
mainHandEnchantID (начиная с версии 6.0)
hasOffHandEnchant
    Логическое значение — 1, если на левом оружии есть зачарование, или ноль. 
offHandExpiration
    Число — продолжительность зачарования дополнительного оружия в МИЛЛИСЕКУНДАХ, ноль, если зачарования нет. 
OffHandCharges
    Число — количество зарядов дополнительного оружия, 0, если зарядов нет, ноль, если нет чар. 
offHandEnchantID (начиная с версии 6.0) 