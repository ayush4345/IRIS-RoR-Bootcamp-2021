class Deletecolumnfrombooks < ActiveRecord::Migration[6.1]
  def change
    remove_columns( :books, :publication_id)
  end
end
