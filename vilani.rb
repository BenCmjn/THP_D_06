# Cédric Villani a besoin de résoudre le problème suivant :
# Si on liste tous les entiers naturels en dessous de 10
# qui sont multiples de 3 ou 5, on obtient 3, 5, 6, et 9.
# La somme de ces nombres est égale à 23.

# Trouve la somme des multiples de 3 et 5 inférieurs à 1000.
####################################################


def pb # Déclaration de la méthode "pb"
	res = 0 # Déclaration de la variable "res" (résultat)
	
	for num in (1..1000) # pour tous les
		if num % 3 == 0 || num % 5 == 0
		
		res += num 	
		end
	end
	puts res
end

pb