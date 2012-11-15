class AddStateToMaarks < ActiveRecord::Migration
  def change
    add_column :maarks, :state, :string
  end
end
