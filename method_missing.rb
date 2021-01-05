# frozen_string_literal: true

#:nodoc
class Book
  attr_accessor :title

  def method_missing(method_name, *_agruments)
    raise ArgumentError, 'This method does not exist.' unless method_name.to_s.include?('test')

    puts 'This is test method'

    super
  end

  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s.start_with?('test') || super
  end
end

book = Book.new

book.test_method
book.lorem_ipsum
