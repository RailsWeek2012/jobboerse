class Application < ActiveRecord::Base
  belongs_to(:user)
  has_many(:papers)
  attr_accessible :application, :firstname, :house_number, :mobile, :name, :phone, :postal_number, :surname, :user_id,
                  :email, :street, :city

  validates_presence_of  :application,:city, :firstname, :house_number, :name, :phone, :postal_number, :email, :street
  validates_numericality_of :phone ,:only_integer => true , :message => "Bitte gueltige Telefonnummer angeben"

end
