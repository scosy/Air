# Créez un programme qui découpe une chaîne de caractères en tableau en fonction du séparateur donné en 2e argument.

# Fonctions utilisées
def only_numbers(array)
  are_numbers = true
  count = 0
  array.each { |c| (c.count("0-9\\-0-\\-9") == c.size) ? () : (are_numbers = false; break) }
  are_numbers
end

def string_to_array(string, separator)
  array = []
  string.each_line(separator, chomp: true) { |c| array << c}
  array
end
# Gestion d'erreurs
(puts "error"; exit) if ARGV.size != 2
(puts "error"; exit) if only_numbers(ARGV)
# Résolution
split_by = string_to_array(ARGV[0], ARGV[1])

# Affichage 
puts split_by