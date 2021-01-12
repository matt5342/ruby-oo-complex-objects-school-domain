require 'pry'
class School
    def initialize(name)
        @name = name
        @roster = {}
    end
    attr_reader :name

    def roster
        @roster
    end
    def add_student(student, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << student
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.each do |grade_name, name_array|
            # binding.pry
            if name_array[0][0] > name_array[1][0]
                lower = name_array[0]
                name_array[0] = name_array[1]
                name_array[1] = lower
            end
        end
    end



end