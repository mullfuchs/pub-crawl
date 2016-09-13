class AddAdminToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :admin, :string
  end
end
