# Créez un programme qui décale tous les éléments d’un tableau vers la gauche.
# Le premier élément devient le dernier à chaque rotation.

# Utilisez une fonction de ce genre (selon votre langage) :
# ma_rotation(array) {
# 	# votre algorithme
# 	return (new_array)
# }

# Fonctions utilisées
def rotation(array)
  new_array = []
  array.each.with_index { |word, index| new_array.insert(index - 1, word)}
  new_array.join(", ")
end
# Gestion d'erreurs
(puts "error"; exit) if ARGV.size < 3

# Résolution
rotate_left = rotation(ARGV)

# Affichage
puts rotate_left