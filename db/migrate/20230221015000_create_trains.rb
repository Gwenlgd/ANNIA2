class CreateTrains < ActiveRecord::Migration[7.0]
  def change
    create_table :trains do |t|
      t.string :nom
      t.string :ville_depart
      t.string :ville_arrivee
      t.time :heure_aller
      t.date :date_aller
      t.time :heure_retour
      t.time :date_retour
      t.text :note

      t.timestamps
    end
  end
end
