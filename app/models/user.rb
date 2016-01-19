class User < ActiveRecord::Base
  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  def self.from_omniauth(auth)
result = User.where(email: auth.info.email).first

if result
  return result
else
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.fullname = auth.info.name
    user.provider = auth.provider
    user.uid = auth.uid
    user.email = auth.info.email
    user.image = auth.info.image
    user.password = Devise.friendly_token[0, 20]
  end
end
 end 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook] 
end
