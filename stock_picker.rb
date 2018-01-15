# 3. Stock picker

# Voici par exemple une array de prix : [17,3,6,9,15,8,6,1,10],
# la fonction trader_du_dimanche va devoir sortir LES INDEX DU JOUR D'ACHAT ET DU JOUR DE REVENTE
# qui donneront le plus haut bénéfice. Pour l'array vue ci-haut par exemple,
# ce sera le deuxième jour (à l'achat) et le cinquième jour (à la revente)

# > trader_du_dimanche([17,3,6,9,15,8,6,1,10])
# => [1,4]   ($15 - $3 == $12)
#------------------------------------------------------------------------
# a partir de prix, connaitre le meilleur jour d'achat, le meilleur jour de revente pour faire le max de cash
# meilleur jour d'achat : prix le plus bas
# meilleur jour de revente : prix le plus haut
# ex pour [17,3,6,9,15,8,6,1,10] on va choisir 3 (jour 2) pour l'achat et et 15 (jour 5) pour la revente
#affiche le jour d'achat, de revente puis le prix de revente - le prix d'achat = le benefice

# Déclaration de la méthode avec "prix" en paramètre
def trader_du_dimanche(prix)
    #initialisation des 4 variables
    jourdachat = 0
    jourdevente = 0
    benefice = 0
    benefice_temp = 0
    # Correction de la taille du tableau pour l'exploiter dans une boucle for
    taille_array = prix.length - 1
    # Annonce du spectre de la comparaison des prix (du 1er au dernier jour)
    puts "\n Comparaison sur #{taille_array} Jours :"
    
    # La boucle "i" va passer en revue tous les jours depuis le début
    for i in (0..taille_array) # début boucle jour meilleur achat
        # Puis la boucle "j" va passer en revue tous les jours depuis "i"
        for j in (i+1..taille_array) # début boucle jour meilleur vente
            
            benefice_temp = prix[j] - prix[i] # à chaque tour on calcule la différence

            if benefice_temp > benefice # Si le bénef est plus grand qu'actuellement,
                jourdachat = i # On retient le prix d'achat
                jourdevente = j #On retient le prix de vente
                benefice = benefice_temp # On met à jour le bénéfice

            end #Et on recommence jusqu'à la fin du tableau
        end # fin boucle jour meilleur vente (j)
    end# fin boucle jour meilleur achat (i)

# On affiche toute ces résultats
puts "\n Meilleur jour pour l'achat : #{jourdachat+1} -> $#{prix[jourdachat]}
      \n Meilleur jour pour la vente: #{jourdevente+1} -> $#{prix[jourdevente]}
      \n Bénéfice sur la semaine : $#{benefice}"
end # Fin de la méthode

#Appel de la méthode, pour le tableau de prix suivant :
trader_du_dimanche([17,3,6,9,15,8,6,1,10])
puts # Passe une ligne avant la fin du programme.





