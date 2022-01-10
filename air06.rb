# Créez un programme qui supprime d’un tableau tous les éléments qui ne contiennent pas une autre chaîne de caractères.

# Utilisez une fonction de ce genre (selon votre langage) :
# ma_fonction(array_de_strings, string) {
# 	# votre algorithme
# 	return (nouvel_array_de_strings)
# }


# Fonctions utilisées
def only_numbers(array)
  are_numbers = true
  count = 0
  array.each { |c| (c.count("0-9\\-0-\\-9+") == c.size) ? () : (are_numbers = false; break) }
  are_numbers
end

def delete_by_string(array, string)
  new_array = []
  (array.size - 1).downto(0) do |index|
    array[index].include?(string) || array[index].include?(string.upcase) ? () : (new_array << array[index])
  end
  new_array.join(", ")
end

# Gestion d'erreurs
(puts "error"; exit) if ARGV.size < 3
(puts "error"; exit) if only_numbers(ARGV)



# Parsing
string = ARGV.pop
array = ARGV

# Résolution
covid_certificate_check = delete_by_string(array, string)

# Affichage
puts covid_certificate_check