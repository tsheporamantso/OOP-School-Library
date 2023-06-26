require './person'

class Student < Person
  def initialize(classroom, age, name: 'unknown', parent_permission: true)
    super(id, age, name, parent_permission)
    @classroom = classroom
  end

  def play_hook
    '¯\(ツ)/¯'
  end
end
