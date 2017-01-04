class AddIndexToMerchantEmail < ActiveRecord::Migration[5.0]
  def change
  	add_index :merchants, :email, unique: true
  end
end
