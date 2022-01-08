# Créez un programme qui transforme un tableau de chaînes de caractères en une seule chaîne de caractères.
# Espacés d’un séparateur donné en dernier argument au programme.

# Fonctions utilisées
def only_numbers(array)
  are_numbers = true
  count = 0
  array.each { |c| (c.count("0-9\\-0-\\-9") == c.size) ? () : (are_numbers = false; break) }
  are_numbers
end

def join_by(array, separator)
  string = ""
  array.each { |e| string += (e + separator)}
  string
end

# Gestion d'erreurs
(puts "error"; exit) if ARGV.size < 3
(puts "error"; exit) if only_numbers(ARGV)

# Parsing
separator = ARGV.pop
array = ARGV

# Résolution
concat = join_by(array, separator)

# Affichage
puts concat