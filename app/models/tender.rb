class Tender < ActiveRecord::Base
  belongs_to(:user)
  attr_accessible :company_name, :contact, :description, :phone, :sector, :subject, :user_id, :email
  validates_presence_of :company_name, :contact, :description, :phone, :sector, :subject, :email
  validates_numericality_of :phone ,:only_integer => true , :message => "Bitte gueltige Telefonnummer angeben"


end
