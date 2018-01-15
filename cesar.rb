# Ta mission : créér une méthode chiffre_de_cesar
# qui prend en paramètre un string et le nombre de lettre
# à décaler, et sort le string modifié.

# Déclaration de la méthode "code_de_cesar"
def code_de_cesar(phrase,x) # "phrase" =string et "x" = nombre de lettre à décaler.
	
	phrase.each_char do |lettre| #Prend chaque char de "phrase" et considère "lettre"

		lettre = lettre.ord # passe les char en chiffre (cf. ASCII)
		lettre += x # Rajoute "x" à ce chiffre
		# Pour la ligne précédente on aurait pu écrire "lettre = lettre + x"
		lettre = lettre.chr # Maintenant repasse les chiffres en caractères (.chr)
		print lettre # affiche cette lettre
	end # Fin de la boucle
end # fin de la méthode

# Appel la méthode "code de cesar" pour la phrase "A chiffrer", et décale de 5 :
code_de_cesar("A chiffrer", 5)
puts