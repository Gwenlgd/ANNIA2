class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :contraintes
      t.string :bring
      t.integer :quantites

      t.timestamps
    end
  end
end
