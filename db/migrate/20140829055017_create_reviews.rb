class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body
      t.string :review_type
      t.references :product, index: true

      t.timestamps
    end
  end
end
