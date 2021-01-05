# frozen_string_literal: true

#:nodoc
class Book
  attr_accessor :title, :author, :length

  def initialize(title, author, length)
    @title  = title
    @author = author
    @length = length
  end

  def self.create_method(title)
    define_method("#{title}_details") do |arg|
      puts "This book is written by #{author} and has #{length} pages, #{arg}"
    end
  end
end

book = Book.new('testTitle', 'testAuthor', 300)

Book.create_method(book.title)

book.testTitle_details('test')
