class Tender < ActiveRecord::Base
  belongs_to(:user)
  attr_accessible :company_name, :contact, :description, :phone, :sector, :subject, :user_id
end
