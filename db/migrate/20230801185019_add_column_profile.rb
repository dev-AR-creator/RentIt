class AddColumnProfile < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles,:phone,:integer
  end
end
