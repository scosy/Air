# Créez un programme qui trie une liste de nombres.
# Votre programme devra implémenter l’algorithme du tri rapide (QuickSort).

# Vous utiliserez une fonction de cette forme (selon votre langage) :
# my_quick_sort(array) {
# 	# votre algorithme
# 	return (new_array)
# }


# Fonctions utilisées
def only_numbers(array)
  are_numbers = true
  count = 0
  array.each { |c| (c.count("0-9\\-0-\\-9+") == c.size) ? () : (are_numbers = false; break) }
  are_numbers
end

def my_quick_sort(array)
  return array if array.length <= 1
  pivot = array.sample
  left, right = array.partition { |n| n < pivot }
  my_quick_sort(left) + my_quick_sort(right)
end

# Gestion d'erreurs
(puts "error"; exit) if ARGV.size < 3
(puts "error"; exit) if !only_numbers(ARGV)

# Résolution
quick_sort = my_quick_sort(ARGV).join(", ")

# Affichage
puts quick_sort