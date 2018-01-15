# Définition d'une méthode au nom de "text_vers_string"
# et ayant comme paramètre une variable "nom_fichier"
def text_vers_string (nom_fichier)
	# Déclaration de variable "data" (vide)
	data =""
	# et variable "f" qui ouvre notre fichier, et annonce "r" (je sais pas pkoi encore)
	f = File.open(nom_fichier, "r")

	# Déclaration d'une méthode "each_line"
	# pour que chaque ligne de "f"…
	f.each_line do |line|
		# …soit rajouté à une variable "data" 
		data += line
	end
	# Retourne la variable "data"
	return data
end # Fin de la méthose "text_vers_string"

####------------ LE PROGRAMME --------------####
# Déclaration de la variable "blabla" qui va être le string
# du fichier txt qu'on veut.
blabla = text_vers_string ('blabla.txt')

# Puts cette variable :
puts blabla
