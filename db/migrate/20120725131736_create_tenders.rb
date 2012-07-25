class CreateTenders < ActiveRecord::Migration
  def change
    create_table :tenders do |t|
      t.integer :user_id
      t.string :company_name
      t.string :sector
      t.string :subject
      t.integer :phone
      t.text :description
      t.string :contact

      t.timestamps
    end
  end
end
