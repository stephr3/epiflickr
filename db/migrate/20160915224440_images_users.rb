class ImagesUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :images_users do |t|
      t.column :user_id, :integer
      t.column :image_id, :integer
    end
  end
end
