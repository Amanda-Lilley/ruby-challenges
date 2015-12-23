class Student
  attr_accessor :name, :email, :grade
end

student_01 = {name: "Sandra", email: "sandra@example.com", grade: "A"}
student_02 = {name: "Emma", email: "Emma@example.com", grade: "C"}

student_of_year = student_02[:name]

puts "The student of the year is #{student_of_year}!"
