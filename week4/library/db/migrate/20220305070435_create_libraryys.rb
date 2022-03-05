class CreateLibraryys < ActiveRecord::Migration[6.1]
  def change
    create_table :libraryys do |t|

      t.timestamps
    end
  end
end
