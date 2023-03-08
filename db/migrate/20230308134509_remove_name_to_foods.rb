class RemoveNameToFoods < ActiveRecord::Migration[7.0]
  def change
    remove_column :foods, :name
  end
end
