class AddUserIdToCompanyProfiles < ActiveRecord::Migration
  def change
    add_column :company_profiles, :user_id, :integer
  end
end
