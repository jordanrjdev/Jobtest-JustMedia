class CreateHasStores < ActiveRecord::Migration[6.1]
  def change
    create_table :has_stores do |t|
      t.references :product, null: false, foreign_key: true
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
