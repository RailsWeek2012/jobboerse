class Application < ActiveRecord::Base
  belongs_to(:user)
  has_many(:papers)
  attr_accessible :application, :firstname, :house_number, :mobile, :name, :phone, :postal_number, :surname, :user_id,
                  :email, :street, :city

  validates :email,
            format: /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i

  validates_presence_of  :application,:city, :firstname, :house_number, :name, :phone, :postal_number, :email, :street
  validates_numericality_of :phone ,:only_integer => true , :message => "Nur Zahlen erlaubt"
  validates_numericality_of :postal_number ,:only_integer => true , :message => "Nur Zahlen erlaubt"
  validates :firstname, format: /^[a-zA-Z\d\s]*$/


end
