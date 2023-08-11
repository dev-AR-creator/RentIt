class AddBuyer < ActiveRecord::Migration[7.0]
  def change
  add_column :items,:buyer,:integer
  end
end
