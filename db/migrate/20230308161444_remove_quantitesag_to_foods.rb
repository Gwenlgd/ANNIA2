class RemoveQuantitesagToFoods < ActiveRecord::Migration[7.0]
  def change
    remove_column :foods, :quantites
  end
end
