class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.integer :user_id
      t.string :name
      t.string :surname
      t.string :firstname
      t.integer :house_number
      t.integer :postal_number
      t.integer :phone
      t.integer :mobile
      t.text :application

      t.timestamps
    end
  end
end
