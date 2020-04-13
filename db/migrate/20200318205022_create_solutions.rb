class CreateSolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :solutions do |t|
      t.string :solution

      #回答テーブル追加
      t.integer :question_id, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
