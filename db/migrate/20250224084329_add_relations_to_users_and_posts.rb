class AddRelationsToUsersAndPosts < ActiveRecord::Migration[8.0]
  def change
    # Добавляем роль пользователя
    add_column :users, :role_id, :integer, null: false, default: 1
    add_index :users, :role_id
    add_foreign_key :users, :roles

    # Добавляем категорию поста
    add_column :posts, :category_id, :integer, null: false, default: 1
    add_index :posts, :category_id
    add_foreign_key :posts, :categories
  end
end
