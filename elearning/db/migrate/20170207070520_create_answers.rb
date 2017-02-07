class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :id_Word
      t.string :Content
      t.boolean :is_Correct

      t.timestamps
    end
  end
end
