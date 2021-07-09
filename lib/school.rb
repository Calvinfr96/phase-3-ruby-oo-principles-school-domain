# code here!
class School
    attr_accessor :school_name, :roster

    def initialize(name)
        @school_name = name
        @roster = {}
    end
    
    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_students = {}
        @roster.each do |grade, students|
            sorted_students[grade] = students.sort
        end
        sorted_students
    end
end

cornwell = School.new("Cornwell")
print cornwell.roster
puts
cornwell.add_student("Andrew", 9)
cornwell.add_student("Britanny", 9)
cornwell.add_student("Andre",9)
cornwell.add_student("Andrew", 10)
cornwell.add_student("Andre", 10)
cornwell.add_student("Andrew", 11)
cornwell.add_student("Andre", 11)
cornwell.add_student("Andrew", 12)
cornwell.add_student("Andre", 12)
print cornwell.roster
puts
print cornwell.grade(9)
puts
print cornwell.sort
puts