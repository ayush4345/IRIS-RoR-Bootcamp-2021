class Addcolumntobooks < ActiveRecord::Migration[6.1]
  def change
    add_reference :books, :publication
  end
end
