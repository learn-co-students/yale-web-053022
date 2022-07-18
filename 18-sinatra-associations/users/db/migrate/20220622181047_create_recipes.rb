class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :duration
      # t.integer :user_id
      t.references :user

      t.timestamps null: false
    end
  end
end
