class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    change_table :workers do |w|
      w.rename :nimi, :name
      w.rename :ametikoht, :jobtitle
      w.rename :lisainfo, :info
    end

    change_table :menus do |m|
      m.rename :toidukord1, :meal1
      m.rename :kirjeldus1, :description1
      m.rename :toidukord2, :meal2
      m.rename :kirjeldus2, :description2
      m.rename :toidukord3, :meal3
      m.rename :kirjeldus3, :description3
      m.rename :toidukord4, :meal4
      m.rename :kirjeldus4, :description4
      m.rename :toidukord5, :meal5
      m.rename :kirjeldus5, :description5
      m.rename :lisainfo, :info
    end
  end
end
