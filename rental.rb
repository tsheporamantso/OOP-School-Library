require './book'

class Rental
  attr_accessor :date

  def initialize
    @date = date
    @book = book
    book.rental << self
  end
end
