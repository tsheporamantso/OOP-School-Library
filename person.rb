require './nameable'
require './decorator'
require './capitalize_decorator'
require './trimmed_decorator'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name: 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    super()
  end

  def correct_name
    @name
  end

  def can_use_services?
    return true if is_of_age? || @parent_permission

    false
  end

  private

  def of_age?
    return true if age >= 18

    false
  end
end

person = Person.new(22, name: 'maximilianus')
person.correct_name

capitalized_person = CapitalizeDecorator.new(person)

puts capitalized_person.correct_name

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)

puts capitalized_trimmed_person.correct_name
