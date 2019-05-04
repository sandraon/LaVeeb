class CreateHomepages < ActiveRecord::Migration[5.2]
  def change
    create_table :homepages do |t|
      t.string :orgname
      t.string :logo
      t.text :content
      t.string :picture
      t.string :pictext
      t.string :linktekst
      t.string :linkdest
      t.string :address1
      t.string :address2
      t.string :epost
      t.string :phone
      t.string :uselink1
      t.string :uselink2
      t.string :uselink3
      t.string :uselink4

      t.timestamps
    end
  end
end
