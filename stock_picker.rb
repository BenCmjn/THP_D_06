# 3. Stock picker
# a partir de prix, connaitre le meilleur jour d'achat, le meilleur jour de revente pour faire le max de cash
# meilleur jour d'achat : prix le plus bas
# meilleur jour de revente : prix le plus haut
# ex pour [17,3,6,9,15,8,6,1,10] on va choisir 3 (jour 2) pour l'achat et et 15 (jour 5) pour la revente
#affiche le jour d'achat, de revente puis le prix de revente - le prix d'achat = le benefice
def trader_du_dimanche(prix)
    
    #initialisation des 4 parametres
@prix=prix
    jourdachat = 0
    jourdevente = 0
    benefice = 0
    beneficetemporaire = 0
    taille_array = prix.length - 1
    puts "la taille de l'array est de #{taille_array}"
    
    #initialisation param
    for i in (0..taille_array) #boucle jour achat
        
        for j in (i+1..taille_array) #boucle jour arrivée
            
            
            
            beneficetemporaire = prix[j] - prix[i]
            if beneficetemporaire > benefice
                jourdachat = i 
                jourdevente = j
                
            end
        end
    end
puts "achat : #{i} vente : #{j}"
end
trader_du_dimanche([17,3,6,9,15,8,6,1,10])