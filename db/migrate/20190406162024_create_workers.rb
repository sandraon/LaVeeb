class CreateWorkers < ActiveRecord::Migration[5.2]
  def change
    create_table :workers do |t|
      t.string :nimi
      t.string :ametikoht
      t.string :epost
      t.string :number
      t.text :lisainfo
      t.string :foto

      t.timestamps
    
    end
  end
end
