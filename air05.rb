# Créez un programme qui est capable de reconnaître et de faire une opération (addition ou soustraction) 
# sur chaque entier d’une liste.

# Fonctions utilisées
def only_numbers(array)
  are_numbers = true
  count = 0
  array.each { |c| (c.count("0-9\\-0-\\-9+") == c.size) ? () : (are_numbers = false; break) }
  are_numbers
end

def calculation(list, operation)
  operator = operation.split("")
  list.map! { |number| number.method(operator[0]).call(operator[1].to_i)}
  list.join(" ")
end

# Gestion d'erreurs
(puts "error"; exit) if ARGV.length < 3
(puts "error"; exit) if !only_numbers(ARGV)

# Parsing
operation = ARGV.pop
list = ARGV.map! { |e| e.to_i}

# Résolution
on_each = calculation(list, operation)

# Affichage
puts on_each