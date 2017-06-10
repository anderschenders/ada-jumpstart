# utilize single array to store all student information
all_students = []

# ask user for 5 names
# utilize hashes to store info (name, id, email) for each individual student
1.times do
	ind_student_info = {}
	puts "Please give me a first and last name:"
	student_name = gets.chomp.upcase
	ind_student_info["name"] = student_name
# use random number generator to create random 6 digit number
# use until loop to ensure last 3 digits is greater or equal to 100
# use array and if statement to ensure no duplicate ids
  duplicates = []
  random_id = rand(111111..999999)
  puts random_id
	until random_id.to_s.split(//).last(3).join.to_i >= 100
		random_id = rand(111111..999999)
	end
  puts random_id
  duplicates << random_id
  puts duplicates
  if duplicates.include?(random_id)
    random_id = rand(111111..999999)
    until random_id.to_s.split(//).last(3).join.to_i >= 100
      random_id = rand(111111..999999)
    end
    ind_student_info["id"] = random_id
  else
    ind_student_info["id"] = random_id
  end


	# account for names with 2 first names
	if ind_student_info["name"].split.size == 3
		new_names = ind_student_info["name"].split
		first_two = new_names[0].chars.first + new_names[1].chars.first
		student_email = first_two + ind_student_info["name"].split.last + ind_student_info["id"].to_s.split(//).last(3).join.to_s + "@adadevelopers.com"
	else
		student_email = ind_student_info["name"].chars.first + ind_student_info["name"].split.last + ind_student_info["id"].to_s.split(//).last(3).join.to_s + "@adadevelopers.com"
	end
    ind_student_info["email"] = student_email

    all_students << ind_student_info
end

puts all_students
# list student names only
puts "Student roster:"
names_only = all_students.map {|x| x["name"]}
puts names_only
