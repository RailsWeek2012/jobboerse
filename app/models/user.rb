class User < ActiveRecord::Base
  has_many(:applications)
  has_many(:papers)
  has_many(:tenders)
  has_one(:user_profile)
  has_one(:company_profile)
  acts_as_messageable

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me , :is_company
  # attr_accessible :title, :body
  validates_presence_of :email, :password, :password_confirmation

  validates :email,
            format: /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i,
            uniqueness: true



end
