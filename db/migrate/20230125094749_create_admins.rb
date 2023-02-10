class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :username
      t.string :email
      t.string :avatar, :default => Faker::Avatar.unique.image()
      t.boolean :is_admin, :default => true
      t.string :password_digest

      t.timestamps
    end
  end
end
