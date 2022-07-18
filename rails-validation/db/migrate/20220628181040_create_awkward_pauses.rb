class CreateAwkwardPauses < ActiveRecord::Migration[7.0]
  def change
    create_table :awkward_pauses do |t|
      t.string :location
      t.string :topic
      t.integer :minutes

      t.timestamps
    end
  end
end
