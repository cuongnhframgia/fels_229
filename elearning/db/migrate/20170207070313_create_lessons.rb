class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.integer :id_User
      t.integer :id_Category

      t.timestamps
    end
  end
end
