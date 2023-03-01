class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :user, index: true
      t.belongs_to :apartment, index: true
      t.integer :rating
      t.text :comment
      t.timestamps
    end
  end
end
