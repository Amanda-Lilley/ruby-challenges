class Child
  attr_accessor :name, :mother_name
end

first_child = Child.new
first_child.name = "Cheyenne"
first_child.mother_name = "Becca"
child_name = first_child.name
child_mother = first_child.mother_name

puts "The first born is #{child_name} and her mother is #{child_mother}."
