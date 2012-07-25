class Application < ActiveRecord::Base
  belongs_to(:user)
  has_many(:papers)
  attr_accessible :application, :firstname, :house_number, :mobile, :name, :phone, :postal_number, :surname, :user_id
end
