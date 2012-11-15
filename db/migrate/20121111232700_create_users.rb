class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :fb_uid
      t.string :fb_access_token
      t.string :current_city
      t.string :photo_url

      t.timestamps
    end
  end
end
