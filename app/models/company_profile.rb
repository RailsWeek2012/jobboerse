class CompanyProfile < ActiveRecord::Base
  belongs_to(:user)
  has_many(:tenders)
  attr_accessible :user_id, :city, :company_name, :contact, :email, :fax, :house_number, :phone, :postal_code, :street
  validates_presence_of :city, :company_name, :contact, :email, :house_number, :phone, :postal_code, :street
end
