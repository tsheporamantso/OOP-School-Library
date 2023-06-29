require './nameable'
require './decorator'
require './capitalize_decorator'
require './trimmed_decorator'
require './rental'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age:, name: 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
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
    return true if age.to_i >= 18

    false
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end
end
