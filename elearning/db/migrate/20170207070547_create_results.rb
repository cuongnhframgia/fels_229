class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.integer :id_Lession
      t.integer :id_Answer
      t.integer :id_Word

      t.timestamps
    end
  end
end
