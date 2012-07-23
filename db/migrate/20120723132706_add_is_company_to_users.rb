class AddIsCompanyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_company, :boolean, :default => false
  end
end
