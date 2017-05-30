people = ["Alex", "Bernadette", "Charles", "Dana", "Eddie", "Fernando", "Gus", "Hiro"]
pairs = people.combination(2).to_a

each_person_pairs = []

alex = []
pairs.map do |pair|
  alex << pair if pair[0] == "Alex"
end
each_person_pairs << alex


bernadette = []
pairs.map do |pair|
  bernadette << pair if pair[0] == "Bernadette"
end
each_person_pairs << bernadette


charles = []
pairs.map do |pair|
  charles << pair if pair[0] == "Charles"
end
each_person_pairs << charles

dana = []
pairs.map do |pair|
  dana << pair if pair[0] == "Dana"
end
each_person_pairs << dana

eddie = []
pairs.map do |pair|
  eddie << pair if pair[0] == "Eddie"
end
each_person_pairs << eddie

fernanda = []
pairs.map do |pair|
  fernanda << pair if pair[0] == "Fernanda"
end
each_person_pairs << fernanda

gus = []
pairs.map do |pair|
  gus << pair if pair[0] == "Gus"
end
each_person_pairs << gus

hiro = []
pairs.map do |pair|
  hiro << pair if pair[0] == "Hiro"
end
each_person_pairs << hiro

monday = each_person_pairs.map do |person_pairs|
  person_pairs.sample unless monday.length > 3
end
p monday
