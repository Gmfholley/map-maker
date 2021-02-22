require 'pry'
Dir.glob('interactors/*.rb').each { |file| require_relative file }
Dir.glob('models/*.rb').each { |file| require_relative file }

puts "How big do you want your map?"
size = gets.chomp.to_i

map = Map.create_square(size)


puts "Here is your map."
puts map.to_s

puts "We will now add a random path."

path = Path.new(map, map.random_point)

max_path = 12
i = 0
while path.next! && i < max_path
  i += 1
end

path.mark!

puts "Here is a map with a path, starting at 'S' and ending with 'E'."

puts map.to_s
