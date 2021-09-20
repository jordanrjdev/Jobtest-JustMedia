class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name 
      t.string :color
      t.float :price
      t.float :size 
      
      t.timestamps
    end
  end
end
