class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :number
      t.string :age
      t.text :description
      t.string :teacher
      t.string :phone

      t.timestamps
    drop_table :groups
    end
  end
end
