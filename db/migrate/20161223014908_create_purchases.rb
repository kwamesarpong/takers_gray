class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
        t.belongs_to :user, index: true
      t.belongs_to :product, index: true
      t.float :price
      t.float :rate
      t.float :total

      t.timestamps
    end
  end
end
