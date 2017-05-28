# Create array to store student names
# Create array to store student ID numbers
# Create array to store student email addresses
names = []

File.open("student_names.txt").each do |student_name|
  names << student_name
end

ids = []
emails = []

# ask user for 5 names
# 5.times do
# 	puts "Please give me a first and last name:"
# 	student_name = gets.chomp.upcase
# 	names << student_name
# end
# puts names

# generate random ids (two periods means inclusive high value)
# account for potential duplicates
5.times do
	random_id = rand(111111..999999)
	until random_id.to_s.split(//).last(3).join.to_i >= 100 # ensure number is 3 digits long
		random_id = rand(111111..999999)
	end
	# if random_id is equal to any of the elements already in the array generate another #
	if ids.include?(random_id)
		random_id = rand(111111..999999)
		until random_id.to_s.split(//).last(3).join.to_i >= 100 # ensure new number is 3 digits long
		random_id = rand(111111..999999)
		end
	else
		ids << random_id
	end
end
puts ids

# write a times loop to generate student email addresses in the format: (first inital   # )+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org

temp_number_list = [0, 1, 2, 3, 4]

temp_number_list.each do |temp_number|
	# account for names with 2 first names
	if names[temp_number].split.size == 3
		new_names = names[temp_number].split
		first_two = new_names[0].chars.first + new_names[1].chars.first
		puts first_two + names[temp_number].split.last + ids[temp_number].to_s.split(//).last(3).join.to_s + "@adadevelopers.com"
	else
		puts names[temp_number].chars.first + names[temp_number].split.last + ids[temp_number].to_s.split(//).last(3).join.to_s + "@adadevelopers.com"
	end
end
