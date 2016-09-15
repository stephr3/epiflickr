class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.column :content, :text
      t.column :image_id, :integer
      t.column :author_id, :integer

      t.timestamps

    end
    add_column :users, :username, :string
  end
end
