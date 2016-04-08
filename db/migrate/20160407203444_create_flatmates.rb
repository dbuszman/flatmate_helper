class CreateFlatmates < ActiveRecord::Migration[5.0]
  def change
    create_table :flatmates do |t|
      t.string :firstname
      t.string :lastname
      t.time :leaving_out
      t.time :ariiving
      t.text :duties
      t.integer :charges

      t.timestamps
    end
  end
end
