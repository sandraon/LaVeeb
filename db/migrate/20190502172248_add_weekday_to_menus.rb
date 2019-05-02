class AddWeekdayToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :weekday, :string
  end
end
