# Créez un programme qui découpe une chaîne de caractères en tableau
# (séparateurs : espaces, tabulations, retours à la ligne).

# Fonctions utilisées
def is_numeric(string)
  string.match?(/[0-9]/)
end

def string_to_array(string)
  array = []
  string.each_line(' ') { |c| array << c.chomp(' ')}
  array
end
# Gestion d'erreurs
(puts "error"; exit) if ARGV.length != 1
(puts "error"; exit) if is_numeric(ARGV[0])

# Résolution
split = string_to_array(ARGV[0])

# Affichage 
puts split