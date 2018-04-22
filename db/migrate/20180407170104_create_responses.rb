class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.integer :item_id
      t.integer :user_id
      t.string :response_type

      t.timestamps
    end
  end
end