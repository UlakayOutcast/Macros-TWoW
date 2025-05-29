Starfire+Wrath+Hurricane+Nature's Swiftness
/script if IsControlKeyDown()then CastSpellByName("Hurricane")else if IsShiftKeyDown()then CastSpellByName("Wrath")else if IsAltKeyDown()then CastSpellByName("Nature's Swiftness")else CastSpellByName("Starfire")end;end;end;

/script 
if IsControlKeyDown()then CastSpellByName("Hurricane")
else 
	if IsShiftKeyDown()then CastSpellByName("Wrath")
	else 
		if IsAltKeyDown()then CastSpellByName("Nature's Swiftness")
		else CastSpellByName("Starfire")
		end;
	end;
end;