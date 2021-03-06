class CreateDoses < ActiveRecord::Migration
  def change
    create_table :doses do |t|
      t.integer :quantity
      t.references :cocktail, index: true
      t.references :ingredient, index: true

      t.timestamps null: false
    end
    add_foreign_key :doses, :cocktails
    add_foreign_key :doses, :ingredients
  end
end
