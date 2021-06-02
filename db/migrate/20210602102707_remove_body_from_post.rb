class RemoveBodyFromPost < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :title, :string
    remove_column :posts, :body, :text
    remove_reference :posts, :user, null: false, foreign_key: true
  end
end
