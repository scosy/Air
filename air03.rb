# Créez un programme qui retourne la valeur d’une liste qui n’a pas de paire.

# Fonctions utilisées
def alone(array)
  odd_one = ""
    array.each { |element| (array.count(element) == 1) ? (odd_one += element) : () }  
  odd_one
end

# Gestion d'erreurs
(puts "error"; exit) if ARGV.size < 3
(puts "error"; exit) if alone(ARGV).empty?

# Résolution
find_the_odd_one = alone(ARGV)

# Affichage
puts find_the_odd_one