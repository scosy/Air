# Créez un programme qui fusionne deux listes d’entiers triées en les gardant triées,
# les deux listes seront séparées par un “fusion”.

# Utilisez une fonction de ce genre (selon votre langage) :
# sorted_fusion(array1, array2) {
# 	# your algo
# 	return (new_array)
# }

# Fonctions utilisées
def only_numbers(array)
  fusion = array.index("fusion")
  array.delete("fusion")
  are_numbers = true
  count = 0
  array.each { |c| (c.count("0-9\\-0-\\-9") == c.size) ? () : (are_numbers = false; break) }
  array.insert(fusion, "fusion")
  are_numbers
end

def split_array(array)
  array1, array2 = [], []
  fusion = array.index("fusion")
  array.each.with_index { |number, index| (index < fusion) ? (array1 << number) :  (array2 << number) }
  array2.shift
  return array1, array2
end

def sorted_fusion(array1, array2)
  new_array = array1 + array2
  new_array.sort.join(" ")
end

# Gestion d'erreurs
(puts "error"; exit) if ARGV.size < 4
(puts "error"; exit) if !only_numbers(ARGV)

# Parsing
array1 = split_array(ARGV)[0]
array2 = split_array(ARGV)[1]

# Résolution
mix_two_sorted_arrays = sorted_fusion(array1, array2)

# Affichage
puts mix_two_sorted_arrays