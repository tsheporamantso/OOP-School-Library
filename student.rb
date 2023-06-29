require './person'
require './classroom'

class Student < Person
  attr_reader :classroom

  def initialize(age:, classroom:, parent_permission:, name: 'unknown')
    super(age: age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hook
    '¯\(ツ)/¯'
  end

  def add_classroom(classroom)
    classroom.student.push(self) unless classroom.student.include?(self)
  end
end
