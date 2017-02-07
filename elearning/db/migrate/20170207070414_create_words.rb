class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.integer :id_Category

      t.timestamps
    end
  end
end
