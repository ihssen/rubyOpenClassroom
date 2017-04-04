module BooksHelper
  def exemple
    "ceci est un test"
  end

  def book_link the_book
      html = "<a href='/books/#{the_book.id}'>".html_safe
      html += the_book.title
      html += "</a><br>".html_safe
    end
end
