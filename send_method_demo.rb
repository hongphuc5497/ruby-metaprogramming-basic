# frozen_string_literal: true

#:nodoc
class Book
  attr_accessor :title, :author, :length

  def assign_values(values)
    values.each_key do |key, _value|
      send("#{key}=", values[key])
      # self.title = values[key]
    end
  end
end

book_sample = {
  title: 'Forrest Gump',
  author: 'Winston Groom',
  length: 300
}

book = Book.new

book.assign_values(book_sample)

p book
