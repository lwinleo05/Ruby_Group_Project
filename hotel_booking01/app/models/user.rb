class User < ApplicationRecord

  has_many :reviews, dependent: :destroy

  has_many :tokens, dependent: :destroy

  has_many :reservations, dependent: :destroy

  validates_presence_of :name

  validates_uniqueness_of :name, :case_sensitive => false

  validates :name, :length => { :in => 4..30}

  validates_presence_of :email

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

  validates_uniqueness_of :email, :case_sensitive => false

  validates_presence_of :password

  validates :password, :length => { :in => 8..30}
  
  validates :password, confirmation: true

  validates :password_confirmation, presence: true
  
  validates_presence_of :profile
  
end
