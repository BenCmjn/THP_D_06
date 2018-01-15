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


def trader_du_dimanche(prix)    
    #initialisation des 4 parametres
    jourdachat = 0
    jourdevente = 0
    benefice = 0
    benefice_temp = 0
    taille_array = prix.length - 1
    puts "\n Comparaison sur #{taille_array} Jours :"
    
    #initialisation param
    for i in (0..taille_array) #boucle jour achat
        for j in (i+1..taille_array) #boucle jour arrivée
            
            benefice_temp = prix[j] - prix[i]

            if benefice_temp > benefice
                jourdachat = i 
                jourdevente = j 
                benefice = benefice_temp
            end
        end
    end
puts "\n Meilleur jour pour l'achat : #{jourdachat+1} -> $#{prix[jourdachat]}
      \n Meilleur jour pour la vente: #{jourdevente+1} -> $#{prix[jourdevente]}
      \n Bénéfice sur la semaine : $#{benefice}"

end

trader_du_dimanche([17,3,6,9,15,8,6,1,10])
puts





