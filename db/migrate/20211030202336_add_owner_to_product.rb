class AddOwnerToProduct < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :owner, null: false, foreign_key: { to_table: :users }, index: true
  end
end
