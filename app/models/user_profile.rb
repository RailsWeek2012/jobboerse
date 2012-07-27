class UserProfile < ActiveRecord::Base
  belongs_to(:user)
  attr_accessible :user_id, :application, :city, :email, :firstname, :house_number, :mobile, :name, :phone, :postal_code, :street, :surname
  validates_presence_of :city, :email, :firstname, :house_number, :name, :phone, :postal_code, :street

  validates :email,
            format: /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i


  validates_numericality_of :phone ,:only_integer => true , :message => "Nur Zahlen erlaubt"
  validates_numericality_of :postal_code ,:only_integer => true , :message => "Nur Zahlen erlaubt"








end
