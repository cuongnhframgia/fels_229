class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.integer :category_id

      t.timestamps
    end
  end
end
