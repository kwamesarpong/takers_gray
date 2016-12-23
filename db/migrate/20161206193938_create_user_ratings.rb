class CreateUserRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :user_ratings do |t|
    	t.belongs_to :user, index: true
      t.decimal :rating
      t.decimal :limit
      t.decimal :interest

      t.timestamps
    end
  end
end
