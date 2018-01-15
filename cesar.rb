# Ta mission : créér une méthode chiffre_de_cesar
# qui prend en paramètre un string et le nombre de lettre
# à décaler, et sort le string modifié.

def code_de_cesar(phrase)
	phrase.each_char do |lettre|
		lettre = lettre.ord
		lettre += 3
		lettre = lettre.chr
		print lettre
	end
	
end

# chiffre_de_cesar("What a string!", 5)
# => "Bmfy f xywnsl!"


code_de_cesar("Ceci est un code à chiffrer")
puts