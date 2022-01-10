# Créez un programme qui affiche une chaîne de caractères en évitant les caractères identiques adjacents.

# Fonctions utilisées
def only_numbers(array)
  are_numbers = true
  count = 0
  array.each { |c| (c.count("0-9\\-0-\\-9") == c.size) ? () : (are_numbers = false; break) }
  are_numbers
end

def compact(string)
  new_string = []
    string.split("").each.with_index { |letter, index| (letter != string[index + 1] ) ? new_string << letter : () }
  new_string.join
end

# Gestion d'erreurs
(puts "error"; exit) if ARGV.size != 1
(puts "error"; exit) if only_numbers(ARGV)

# Résolution
one_at_a_time = compact(ARGV[0])

# Affichage
puts one_at_a_time