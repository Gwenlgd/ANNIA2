class CreateVoitures < ActiveRecord::Migration[7.0]
  def change
    create_table :voitures do |t|
      t.string :nom
      t.string :ville
      t.text :lieu_rdv
      t.integer :nb_place
      t.time :heure_aller
      t.date :date_aller
      t.time :heure_retour
      t.time :date_retour

      t.timestamps
    end
  end
end
