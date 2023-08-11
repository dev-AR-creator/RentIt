class AddNewColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles,:gender,:string
    add_column :profiles,:Address,:string
    add_column  :profiles,:dateofbirth,:date
  end
end
