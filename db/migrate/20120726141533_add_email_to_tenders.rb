class AddEmailToTenders < ActiveRecord::Migration
  def change
    add_column :tenders, :email, :string
  end
end
