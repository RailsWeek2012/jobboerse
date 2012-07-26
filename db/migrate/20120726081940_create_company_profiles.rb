class CreateCompanyProfiles < ActiveRecord::Migration
  def change
    create_table :company_profiles do |t|
      t.string :company_name
      t.string :street
      t.integer :house_number
      t.integer :postal_code
      t.string :city
      t.integer :phone
      t.integer :fax
      t.string :email
      t.string :contact

      t.timestamps
    end
  end
end
