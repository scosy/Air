# Créez un programme qui découpe une chaîne de caractères en tableau
# (séparateurs : espaces, tabulations, retours à la ligne).

# Fonctions utilisées
def only_numbers(array)
  are_numbers = true
  count = 0
  array.each { |c| (c.count("0-9\\-0-\\-9") == c.size) ? () : (are_numbers = false; break) }
  are_numbers
end

def string_to_array(string)
  array = []
  string.each_line(' ') { |c| array << c.chomp(' ')}
  array
end
# Gestion d'erreurs
(puts "error"; exit) if ARGV.length != 1
(puts "error"; exit) if only_numbers(ARGV)

# Résolution
split = string_to_array(ARGV[0])

# Affichage 
puts split