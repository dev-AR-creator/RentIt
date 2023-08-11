class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
     
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.decimal :price
      t.string  :location
      t.integer :condition
      t.integer :duration
      t.boolean :sold
      t.boolean :approval
      t.text    :details
      t.timestamps
    end
  end
end
