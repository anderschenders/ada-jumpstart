# create array with student names
# create array with ids
# create array with emails

names = Array.new

# times loop to ask for 5 names all upcase and put into names array

2.times do
	puts "Please enter in a name, first and last please:"
	names << gets.chomp.upcase
end

puts names

# times loop to generate random student ids and put into id array

ids = Array.new

2.times do
	id = rand(111111..999999)
	ids << id
end

puts ids

# times loop to generate student emails using names and ids

temp_number_list = [0,1]

temp_number_list.each do |temp_number|


puts names[temp_number].chars.first.to_s + names[temp_number].split.last.to_s + ids[temp_number].to_s.split(//).last(3).join.to_s + "@adadevelopers.com"
end

# get first character of each string in array names
# puts names[0].chars.first

# get last name only from each string in array names
# puts names.collect{|s|s.split.last}

# get last 3 digits of each id in ids array
# puts ids[0].to_s.split(//).last(3).join
