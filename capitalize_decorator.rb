require './decorator'

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.Capitalize
  end
end
