class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.integer :id_User
      t.integer :id_Target
      t.integer :type_Activity
      t.string :Content

      t.timestamps
    end
  end
end
