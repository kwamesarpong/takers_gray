class CreateMerchants < ActiveRecord::Migration[5.0]
  def change
    create_table :merchants do |t|
      t.string :first_name
      t.string :last_name
      t.text :email
      t.text :password

      t.timestamps
    end
  end
end
