# Créez un programme qui vérifie si les exercices de votre épreuve de l’air
# sont présents dans le répertoire et qu’ils fonctionnent (sauf celui là).
# Créez au moins un test pour chaque exercice.


# Fonction utilisées
def red(text);            "\e[31m#{text}\e[0m" end
def green(text);          "\e[32m#{text}\e[0m" end
def meta
  @successes = 0
  def air00
    sentence = ""
    count = 0
    exist = File.exist?("air00.rb")
    functions = (`ruby air00.rb "Bonjour les gens"`) == "Bonjour\nles\ngens\n"
    tests = [exist, functions]
    results = []
    tests.each do |e|
      e ?  sentence = (@successes += 1; "air00 #{count += 1}/2) : " + green("success")) : sentence = "air00 #{count += 1}/2) : " + red("failure")
      results << sentence
    end
    puts results
  end

  def air01
    sentence = ""
    count = 0
    exist = File.exist?("air01.rb")
    functions = (`ruby air01.rb "Crevette magique dans la mer des étoiles" "la"`) == "Crevette magique dans \n mer des étoiles\n"
    tests = [exist, functions]
    results = []
    tests.each do |e|
      e ?  sentence = (@successes += 1; "air01 (#{count += 1}/2) : " + green("success")) : sentence = "air02 (#{count += 1}/2) : " + red("failure")
      results << sentence
    end
    puts results
  end

  def air02
    sentence = ""
    count = 0
    exist = File.exist?("air02.rb")
    functions = (`ruby air02.rb "je" "teste" "des" "trucs" " "`) == "je teste des trucs \n"
    tests = [exist, functions]
    results = []
    tests.each do |e|
      e ?  sentence = (@successes += 1; "air02 (#{count += 1}/2) : " + green("success")) : sentence = "air02 (#{count += 1}/2) : " + red("failure")
      results << sentence
    end
    puts results
  end

  def air03
    sentence = ""
    count = 0
    exist = File.exist?("air03.rb")
    functions = (`ruby air03.rb "1" "2" "3" "4" "5" "4" "3" "2" "1"`) == "5\n"
    tests = [exist, functions]
    results = []
    tests.each do |e|
      e ?  sentence = (@successes += 1; "air03 (#{count += 1}/2) : " + green("success")) : sentence = "air03 (#{count += 1}/2) : " + red("failure")
      results << sentence
    end
    puts results
  end

  def air04
    sentence = ""
    count = 0
    exist = File.exist?("air04.rb")
    functions = (`ruby air04.rb "Hello milady,        bien ou quoi ??"`) == "Helo milady, bien ou quoi ?\n"
    tests = [exist, functions]
    results = []
    tests.each do |e|
      e ?  sentence = (@successes += 1; "air04 (#{count += 1}/2) : " + green("success")) : sentence = "air04 (#{count += 1}/2) : " + red("failure")
      results << sentence
    end
    puts results
  end

  def air05
    sentence = ""
    count = 0
    exist = File.exist?("air05.rb")
    functions = (`ruby air05.rb "1" "2" "3" "4" "5" "+2"`) == "3 4 5 6 7\n"
    tests = [exist, functions]
    results = []
    tests.each do |e|
      e ?  sentence = (@successes += 1; "air05 (#{count += 1}/2) : " + green("success")) : sentence = "air05 (#{count += 1}/2) : " + red("failure")
      results << sentence
    end
    puts results
  end

  def air06
    sentence = ""
    count = 0
    exist = File.exist?("air06.rb")
    functions = (`ruby air06.rb Michel Albert Alfred Thérèse Benoit t`) == "Michel, Alfred\n"
    tests = [exist, functions]
    results = []
    tests.each do |e|
      e ?  sentence = (@successes += 1; "air06 (#{count += 1}/2) : " + green("success")) : sentence = "air06 (#{count += 1}/2) : " + red("failure")
      results << sentence
    end
    puts results
  end

  def air07
    sentence = ""
    count = 0
    exist = File.exist?("air07.rb")
    functions = (`ruby air07.rb 1 2 4 5 3`) == "1 2 3 4 5\n"
    tests = [exist, functions]
    results = []
    tests.each do |e|
      e ?  sentence = (@successes += 1; "air07 (#{count += 1}/2) : " + green("success")) : sentence = "air07 (#{count += 1}/2) : " + red("failure")
      results << sentence
    end
    puts results
  end

  def air08
    sentence = ""
    count = 0
    exist = File.exist?("air08.rb")
    functions = (`ruby air08.rb 10 20 30 fusion 15 25 35`) == "10 15 20 25 30 35\n"
    tests = [exist, functions]
    results = []
    tests.each do |e|
      e ?  sentence = (@successes += 1; "air08 (#{count += 1}/2) : " + green("success")) : sentence = "air08 (#{count += 1}/2) : " + red("failure")
      results << sentence
    end
    puts results
  end

  def air09
    sentence = ""
    count = 0
    exist = File.exist?("air09.rb")
    functions = (`ruby air09.rb Michel Albert Thérèse Benoit`) == "Albert, Thérèse, Benoit, Michel\n"
    tests = [exist, functions]
    results = []
    tests.each do |e|
      e ?  sentence = (@successes += 1; "air09 (#{count += 1}/2) : " + green("success")) : sentence = "air09 (#{count += 1}/2) : " + red("failure")
      results << sentence
    end
    puts results
  end

  def air10
    sentence = ""
    count = 0
    exist = File.exist?("air10.rb")
    functions = (`ruby air10.rb air10.rb`) == "# Créez un programme qui affiche le contenu d’un fichier donné en argument.\n\n# Fonctions utilisées\ndef is_file(file)\nfile.split(\".\").size == 2\nend\n\ndef access_file(file)\n  File.foreach(file) { |line| puts line } \nend\n\n# Gestion d'erreurs\n(puts \"error\"; exit) if ARGV.size > 1\n(puts \"error\"; exit) if !is_file(ARGV[0])\n(puts \"error\"; exit) if !File.exist?(ARGV[0]) && !File.executable?(ARGV[0])\n\n# Résolution\ndisplay_content = access_file(ARGV[0])\n\n# Affichage\nputs display_content\n\n"
    tests = [exist, functions]
    results = []
    tests.each do |e|
      e ?  sentence = (@successes += 1; "air10 (#{count += 1}/2) : " + green("success")) : sentence = "air10 (#{count += 1}/2) : " + red("failure")
      results << sentence
    end
    puts results
  end

  def air11
    sentence = ""
    count = 0
    exist = File.exist?("air11.rb")
    functions = (`ruby air11.rb O 5`) == "    O\n   OOO\n  OOOOO\n OOOOOOO\nOOOOOOOOO\n"
    tests = [exist, functions]
    results = []
    tests.each do |e|
      e ?  sentence = (@successes += 1; "air11 (#{count += 1}/2) : " + green("success")) : sentence = "air11 (#{count += 1}/2) : " + red("failure")
      results << sentence
    end
    puts results
  end

  def air12
    sentence = ""
    count = 0
    exist = File.exist?("air12.rb")
    functions = (`ruby air12.rb 6 5 4 3 2 1`) == "1, 2, 3, 4, 5, 6\n"
    tests = [exist, functions]
    results = []
    tests.each do |e|
      e ?  sentence = (@successes += 1; "air12 (#{count += 1}/2) : " + green("success")) : sentence = "air12 (#{count += 1}/2) : " + red("failure")
      results << sentence
    end
    puts results
  end
  ("air00".."air12").each { |e| puts eval(e) }
  puts "Total successes: #{@successes}/26"
end

meta
