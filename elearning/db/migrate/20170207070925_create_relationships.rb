class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.integer :id_Followed
      t.integer :id_Follower

      t.timestamps
    end
  end
end
