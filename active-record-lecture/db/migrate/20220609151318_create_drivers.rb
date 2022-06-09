class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    # create_table :products do |t|
    #   t.string :name
    #   t.text :description

    #   t.timestamps
    # end
    create_table :drivers do |t|
      t.string :name
      t.string :car_model
      t.integer :car_year
      t.boolean :passed_background_check
    end
  end
end
