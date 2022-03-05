class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :fname
      t.string :lname
      t.string :phone

      t.timestamps
    end
  end
end
