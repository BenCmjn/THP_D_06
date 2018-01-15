# Lehman Brothers sont très fiers de ton travail.
# Ils veulent maintenant te faire travailler sur plusieurs entreprises à la fois.
# Ils vont te filer les stocks sous un format hash chaque jour,
# et tu devras trouver les meilleurs moments pour acheter et vendre des actions
# de chaque entreprise. Voici un exemple avec quelques jours :

jour_1 = { :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, :DIS => 15, :CRM => 6, :JNJ => 10 }
jour_2 = { :GOO => 8, :MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, :DIS => 9, :CRM => 10, :JNJ => 17 }
jour_3 = { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD => 10, :DIS => 18, :CRM => 5, :JNJ => 14 }
jour_4 = { :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD => 10, :DIS => 15, :CRM => 18, :JNJ => 3 }
jour_5 = { :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, :DIS => 3, :CRM => 7, :JNJ => 9 }
jour_6 = { :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, :DIS => 9, :CRM => 8, :JNJ => 15 }
jour_7 = { :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, :DIS => 10, :CRM => 9, :JNJ => 17 }

# Fais une fonction trader_du_lundi qui prend en entrée une array de hash
# contenant des prix d'action, et qui sort pour chaque entreprise
# le meilleur moment pour acheter, et le meilleur moment pour vendre.
#-------------------------------------------------------------------------------
def trader_du_lundi(jour)

	classement = jour.sort_by { |comp, rate| rate }
	puts classement

end
# trader_du_lundi(jour_1)

#-------------------------------------------------------------------------------

semaine = [jour_1,jour_2,jour_3,jour_4,jour_5,jour_6,jour_7]

def trader_du_mardi(arr)

cheap = arr.sort_by do |item|
		item[:GOO]
		end 
	puts  cheap
end
# trader_du_mardi(semaine)

#-------------------------------------------------------------------------------

def trader(jour, *companies)
  jour.each { |comp| puts "#{jour} \n\n #{comp}" }
end

trader(semaine)



#---------------------------------------------
# [Par moi-même] :
# frequencies.each { |word, frequency| puts word + " "+ frequency.to_s }
# jour_1.each{|company,prix| puts company+" "+prix}
#---------------------------------------------
# [VU SUR] http://www.informit.com/articles/article.aspx?p=1244471&seqNum=9
#---------------------------------------------
# my_hash.keys.sort_by { |key| my_hash[key] }.each do
# |key|
#     puts my_hash[key]
# end
#---------------------------------------------
# 
#---------------------------------------------
# [VU SUR] http://www.rubyinside.com/how-to/ruby-sort-hash
#---------------------------------------------
# people.sort_by { |name, age| age }
# => [[:joan, 18], [:fred, 23], [:pete, 54]] 
# 
#---------------------------------------------
# [VU SUR] https://stackoverflow.com/questions/14113909/ruby-sort-by-method
#---------------------------------------------
# res = array.sort_by do |item|
#     item[:name]
# 		end 
# puts res
#---------------------------------------------
# [VU SUR] https://www.codecademy.com/courses/learn-ruby/lessons/methods-blocks-sorting/exercises/splat?action=lesson_resume
#---------------------------------------------
# def what_up(greeting, *friends)
#   friends.each { |friend| puts "#{greeting}, #{friend}!" }
# end

# what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")






