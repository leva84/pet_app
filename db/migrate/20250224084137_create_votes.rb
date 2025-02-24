class CreateVotes < ActiveRecord::Migration[8.0]
  def change
    create_table :votes do |t|
      t.integer :comment_id, null: false
      t.integer :user_id, null: false
      t.integer :value, null: false # -1, 0, +1
      t.timestamps
    end

    # Добавляем индексы для ускорения запросов
    add_index :votes, :comment_id
    add_index :votes, :user_id

    # Добавляем связи
    add_foreign_key :votes, :comments
    add_foreign_key :votes, :users
  end
end
