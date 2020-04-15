class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.string :detail, null: false
      #追加
      t.text :solution
      t.timestamps
    end
  end
end
