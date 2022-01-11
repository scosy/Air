# Créez un programme qui affiche le contenu d’un fichier donné en argument.

# Fonctions utilisées
def is_file(file)
file.split(".").size == 2
end

def access_file(file)
  File.foreach(file) { |line| return line } 
end

# Gestion d'erreurs
(puts "error"; exit) if ARGV.size > 1
(puts "error"; exit) if !is_file(ARGV[0])
(puts "error"; exit) if !File.exist?(ARGV[0]) && !File.executable?(ARGV[0])

# Résolution
display_content = access_file(ARGV[0])

# Affichage
puts display_content