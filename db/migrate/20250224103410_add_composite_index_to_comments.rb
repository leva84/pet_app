class AddCompositeIndexToComments < ActiveRecord::Migration[8.0]
  def change
    add_index :comments, [:post_id, :user_id]
  end
end
