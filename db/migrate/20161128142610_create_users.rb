class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.date :DOB
      t.integer :national_id
      t.string :tel_number

      t.timestamps
    end
  end
end
