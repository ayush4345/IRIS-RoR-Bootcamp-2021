class AddcolumnstoauthorBooks < ActiveRecord::Migration[6.1]
  def change
    add_reference :author_books, :book
    add_reference :author_books, :author
  end
end
