class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :registerable, :token_authenticatable, :trackable, :validatable

  validates_presence_of :name

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :name
  attr_accessor :password

  def password_required?
    false
  end
end
