class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients, array: true, default: []
      t.string :instructions, array: true, default: []

      t.timestamps
    end
    add_index :recipes, :ingredients, using: 'gin'
    add_index :recipes, :instructions, using: 'gin'
  end
end
