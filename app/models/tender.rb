class Tender < ActiveRecord::Base
  belongs_to(:company_profile)
  attr_accessible :company_name, :contact, :description, :phone, :sector, :subject, :user_id, :email
  validates :email,
            format: /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i
  validates_presence_of :company_name, :contact, :description, :phone, :sector, :subject, :email
  validates_numericality_of :phone ,:only_integer => true , :message => "Bitte gueltige Telefonnummer angeben"


end
