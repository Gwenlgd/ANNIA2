class AddNomeToFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :nom, :string
  end
end
