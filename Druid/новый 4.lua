-=A+SMFSW+CBSM+RFFbRC=-v1.4 (AI-edited)
-=Druid multi-attack=--=Attack+Swarm+Moonfire+Faerie+StarFire+Wrath+Charge+Bite+Swipe+Maul+Rip+Fury+Ferocious Bite+Rake+Claw=-

/script local function melee() if UnitExists("target") then return CheckInteractDistance("target",3) end; return false; end; local function ranged() if UnitExists("target") then return not melee() end; return false; end; local function inCombat() return UnitAffectingCombat("player") end; local function GotBuff(name,target) if not target then target="player"; end; for ix=1,32 do local tex,cnt=UnitBuff(target,ix); if not tex then return nil; end; if strfind(tex,name) then return cnt; end; end; return nil; end; local function GotDebuff(name,target) if not target then target="target"; end; for ix=1,32 do local tex,cnt=UnitDebuff(target,ix); if not tex then return nil; end; if strfind(tex,name) then return cnt; end; end; return nil; end; local function ActSpell(spell,rank,sw) for ix=192,1,-1 do local spellName,spellRank=GetSpellName(ix,"spell"); if spellName==spell and (spellRank==rank or rank==nil) then if sw==true then return true; elseif sw==0 then return GetSpellCooldown(ix,"spell"); elseif sw=="self" then if rank then CastSpellByName(spell.."("..rank..")",1) else CastSpellByName(spell,1); end; return true; elseif sw==nil then if GetSpellCooldown(ix,"spell")==0 then CastSpell(ix,"spell"); return true; end; end; end; end; return false; end; local function Aura(ID) local ix=GetNumShapeshiftForms(); while ix>0 do local icon,name,active=GetShapeshiftFormInfo(ix); if active then if not ID then return name; else return string.find(name,ID)~=nil; end; end; ix=ix-1; end; return nil; end; function Attack_Actions() local PM=UnitMana("player"); local OoC=GotBuff("Spell_Shadow_ManaBurn"); local TPoH,TH; if UnitExists("target") then TH=UnitHealth("target"); TPoH=UnitHealth("target")/UnitHealthMax("target"); else TPoH=0; end; local _,_,_,_,TR=GetTalentInfo(2,1); local _,_,_,_,OpenWound=GetTalentInfo(2,1); if not UnitCanAttack("player","target") or UnitHealth("target")==0 then TargetNearestEnemy(); end; for ix=1,96 do if IsAttackAction(ix) then if not IsCurrentAction(ix) then CastSpellByName("Attack"); return; end; break; end; end; if not Aura() and TH>=13 and ActSpell("Wrath","Rank 1") then return; end; if Aura("Bear Form") or Aura("Cat Form") then local _,_,_,_,Omen=GetTalentInfo(1,10); if not GotDebuff("Spell

-=-
/script 

-- Проверка дистанции до цели для ближнего боя
local function melee()
    if UnitExists("target") then
        return CheckInteractDistance("target", 3)
    end
    return false
end

-- Проверка дистанции до цели для дальнего боя
local function ranged()
    if UnitExists("target") then
        return not melee()
    end
    return false
end

-- Проверка, находится ли игрок в бою
local function inCombat()
    return UnitAffectingCombat("player")
end

-- Проверка наличия баффа на юнита
local function GotBuff(name, target)
    if not target then
        target = "player"
    end
    for ix = 1, 32 do
        local tex, cnt = UnitBuff(target, ix)
        if not tex then
            return nil
        end
        if strfind(tex, name) then
            return cnt
        end
    end
    return nil
end

-- Проверка наличия дебаффа на юнита
local function GotDebuff(name, target)
    if not target then
        target = "target"
    end
    for ix = 1, 32 do
        local tex, cnt = UnitDebuff(target, ix)
        if not tex then
            return nil
        end
        if strfind(tex, name) then
            return cnt
        end
    end
    return nil
end

-- Использование заклинания
local function ActSpell(spell, rank, sw)
    for ix = 192, 1, -1 do
        local spellName, spellRank = GetSpellName(ix, "spell")
        if spellName == spell and (spellRank == rank or rank == nil) then
            if sw == true then
                return true
            elseif sw == 0 then
                return GetSpellCooldown(ix, "spell")
            elseif sw == "self" then
                if rank then
                    CastSpellByName(spell .. "(" .. rank .. ")", 1)
                else
                    CastSpellByName(spell, 1)
                end
                return true
            elseif sw == nil then
                if GetSpellCooldown(ix, "spell") == 0 then
                    CastSpell(ix, "spell")
                    return true
                end
            end
        end
    end
    return false
end

-- Проверка текущей формы друида
local function Aura(ID)
    local ix = GetNumShapeshiftForms()
    while ix > 0 do
        local icon, name, active = GetShapeshiftFormInfo(ix)
        if active then
            if not ID then
                return name
            else
                return string.find(name, ID) ~= nil
            end
        end
        ix = ix - 1
    end
    return nil
end

-- Основная функция ротации способностей
function Attack_Actions()
    local PM = UnitMana("player")
    local OoC = GotBuff("Spell_Shadow_ManaBurn")
    local TPoH, TH
    if UnitExists("target") then
        TH = UnitHealth("target")
        TPoH = UnitHealth("target") / UnitHealthMax("target")
    else
        TPoH = 0
    end

    local _, _, _, _, TR = GetTalentInfo(2, 1)
    local _, _, _, _, OpenWound = GetTalentInfo(2, 1)

    -- Если нет цели или цель мертва, выбираем новую
    if not UnitCanAttack("player", "target") or UnitHealth("target") == 0 then
        TargetNearestEnemy()
    end

    -- Проверка на атаку
    for ix = 1, 96 do
        if IsAttackAction(ix) then
            if not IsCurrentAction(ix) then
                CastSpellByName("Attack")
                return
            end
            break
        end
    end

    -- Логика для формы без преобразования
    if not Aura() and TH >= 13 and ActSpell("Wrath", "Rank 1") then
        return
    end

    -- Логика для медвежьей и кошачьей формы
    if Aura("Bear Form") or Aura("Cat Form") then
        local _, _, _, _, Omen = GetTalentInfo(1, 10)

        -- Faerie Fire (Feral)
        if not GotDebuff("Spell_Nature_FaerieFire") or Omen == 1 then
            if ActSpell("Faerie Fire (Feral)", "Rank 4") then return
            elseif ActSpell("Faerie Fire (Feral)", "Rank 3") then return
            elseif ActSpell("Faerie Fire (Feral)", "Rank 2") then return
            elseif ActSpell("Faerie Fire (Feral)", "Rank 1") then return
            end
        end

        -- Логика для медвежьей формы
        if Aura("Bear Form") then
            if ranged() and (PM >= 5 or OoC) and ActSpell("Feral Charge") then return end
            ActSpell("Enrage")
            if melee() and (PM >= 30 - TR or OoC) and ActSpell("Savage Bite") then return end
            if melee() and (PM >= 20 or OoC) then ActSpell("Swipe") end
            if melee() and (PM >= 80 - TR or OoC) then ActSpell("Maul") end
        end

        -- Логика для кошачьей формы
        if Aura("Cat Form") then
            if not GotBuff("Ability_Mount_JungleTiger") and PM >= 30 then
                ActSpell("Tiger's Fury")
            end
            if melee() then
                if UnitCreatureType("target") ~= "Elemental" and UnitCreatureType("target") ~= "Mechanical" and
                   UnitCreatureType("target") ~= "Uncategorized" and UnitCreatureType("target") ~= "Undead" and
                   PM >= 30 and not GotDebuff("Ability_GhoulFrenzy") and
                   (GetComboPoints() * 20 >= math.random(100 - (100 * TPoH), 100) or (OpenWound >= 1 and GetComboPoints() >= 1)) then
                    if ActSpell("Rip") then return end
                end
                if PM >= 35 and GetComboPoints() * 20 >= math.random(100 * TPoH, 101) then
                    if ActSpell("Ferocious Bite") then return end
                end
                if UnitCreatureType("target") ~= "Elemental" and UnitCreatureType("target") ~= "Mechanical" and
                   UnitCreatureType("target") ~= "Uncategorized" and UnitCreatureType("target") ~= "Undead" and
                   not GotDebuff("Ability_Druid_Disembowel") and (100 * TPoH) >= math.random(0, 100) and PM >= 40 - TR and not OoC then
                    if ActSpell("Rake") then return end
                end
                if (PM >= 45 - TR or OoC) then ActSpell("Claw") end
            end
        end
    end
end

-- Запуск основной функции
Attack_Actions()
