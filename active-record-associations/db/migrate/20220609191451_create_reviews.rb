class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :rating
      # foreign keys
      # t.integer :game_id
      # t.integer :player_id
      t.references :game
      t.references :player
    end
  end
end
