# Afficher un escalier constitué d’un caractère et d’un nombre d’étages donné en paramètre.

# Fonctions utilisées
def even_numbers(number)
  numbers = *(1..(number * 2))
  numbers.map! { |n| n.odd? ? numbers.delete(n) : () }
  numbers
end
  
def pyramid(character, floors)
  even_numbers = even_numbers(floors.to_i)
  array = []
  even_numbers.each { |n| array << character * n }
  even_numbers.reverse.each.with_index { |n, i| array[i] += " " * (n / 2)  }
  array.each { |e| e.reverse! }
  array
end

# Gestion d'erreurs
(puts "error"; exit) if ARGV.size != 2
(puts "error"; exit) if ARGV[0].size != 1

# Parsing
floors = ARGV[1]
character = ARGV[0]

# Résolution
display_pyramid = pyramid(character, floors)

# Affichage
puts display_pyramid