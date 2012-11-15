class CreateMaarks < ActiveRecord::Migration
  def change
    create_table :maarks do |t|
      t.string :name
      t.string :category
      t.string :photo_url
      t.string :address
      t.string :cross_streets
      t.string :city
      t.float :latitude
      t.float :longitude
      t.integer :user_id

      t.timestamps
    end
  end
end
