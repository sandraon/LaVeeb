class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :toidukord1
      t.text :kirjeldus1
      t.string :toidukord2
      t.text :kirjeldus2
      t.string :toidukord3
      t.text :kirjeldus3
      t.string :toidukord4
      t.text :kirjeldus4
      t.string :toidukord5
      t.text :kirjeldus5
      t.text :lisainfo

      t.timestamps
    
    end
  end
end
