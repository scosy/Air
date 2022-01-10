# Créez un programme qui ajoute à une liste d’entiers triée un nouvel entier tout en gardant la liste triée dans l’ordre croissant.
# Le dernier argument est l’élément à ajouter.

# Utilisez une fonction de ce genre (selon votre langage) :
# sorted_insert(array, new_element) {
# 	# your algo
# 	return (new_array)
# }

# Fonctions utilisées
def only_numbers(array)
  are_numbers = true
  count = 0
  array.each { |c| (c.count("0-9\\-0-\\-9") == c.size) ? () : (are_numbers = false; break) }
  are_numbers
end

def sorted_insert(array, new_element)
  new_array = array
  (new_array.size - 1).downto(0) do |index|
    (new_element > new_array[index]) ? (new_array.insert(index + 1, new_element); break) : ()
  end
  new_array.join(" ")
end

# Gestion d'erreurs
(puts "error"; exit) if ARGV.size < 3
(puts "error"; exit) if !only_numbers(ARGV)

# Parsing
new_element = ARGV.pop
array = ARGV

# Résolution
insert_in_sorted_array = sorted_insert(array, new_element)

# Affichage
puts insert_in_sorted_array