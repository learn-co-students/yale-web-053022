class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :duration
      t.references :user

      t.timestamps
    end
  end
end
