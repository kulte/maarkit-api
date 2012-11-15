class AddFoursquareIdToMaarks < ActiveRecord::Migration
  def change
    add_column :maarks, :foursquare_id, :string
  end
end
