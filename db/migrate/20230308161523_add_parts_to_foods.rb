class AddPartsToFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :parts, :string
  end
end
