class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :surname
      t.string :firstname
      t.string :street
      t.integer :house_number
      t.integer :postal_code
      t.string :city
      t.integer :phone
      t.integer :mobile
      t.string :email
      t.text :application

      t.timestamps
    end
  end
end
