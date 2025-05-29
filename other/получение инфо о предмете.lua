/script local _,_,link=string.find(GetInventoryItemLink("player", 16),"(item:%d+:%d+:%d+:%d+)")local t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11=GetItemInfo(link)print(t1)print(t2)print(t3)print(t4)print(t5)print(t6)print(t7)print(t8)print(t9)print(t10)print(t11)

    itemName
        String - The name of the item.
    itemLink
        String - The item Link; you will see the clickable Link instead of the string. (String, such as: "|cFFFFFFFF|Hitem:12345:0:0:0|h[Item Name]|h|r")
    itemRarity
        Integer - The quality of the item. The value is 0 to 7, which represents Poor to Heirloom.
    itemLevel
        Integer - The item level of this item.
    itemMinLevel
        Integer - The minimum level required to use the item, 0 meaning no level requirement.
    itemType
        String - The type of the item: Armor, Weapon, Quest, Key, etc.
    itemSubType
        String - The sub-type of the item: Enchanting, Cloth, Sword, etc. See itemType.
    itemStackCount
        Integer - How many of the item per stack: 20 for Runecloth, 1 for weapon, 100 for Alterac Ram Hide, etc.
    itemEquipLoc
        String - Where the item may be equipped, if it can. If not equippable, this is an empty string, "". The string returned is also the name of a global string variable, i.e. for "INVTYPE_HEAD", _G["INVTYPE_HEAD"] is a localized, displayable name of the location.
    itemTexture
        String (number) - Texture Id of the item icon.
    itemSellPrice
        Integer - Items vendor value, in copper. Will need to be parsed into gold, silver, copper. Format ggggsscc.