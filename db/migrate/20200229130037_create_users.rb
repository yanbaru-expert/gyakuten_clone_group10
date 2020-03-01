class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      #タスク４追加　ここから
      #カラム作成
      t.string :name
      t.integer :age
      t.string :address
      #タスク４追加　ここまで
      t.timestamps
    end
  end
end
