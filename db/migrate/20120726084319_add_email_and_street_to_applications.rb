class AddEmailAndStreetToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :email, :string
    add_column :applications, :street, :string
    add_column :applications, :city, :string
  end
end
