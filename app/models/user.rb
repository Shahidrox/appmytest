class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :admin
  # attr_accessible :title, :body

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    #user = User.where(:provider => auth.provider, :uid => auth.uid).first
    user = User.where(:email => auth.info.email).first
    if user
      return user
    else
      registered_user = User.where(:email => auth.info.email).first
      if registered_user
        return registered_user
      else             
        where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
          user.provider = auth.provider
          user.uid = auth.uid
          user.email = auth.info.email
          user.name = auth.info.name
          user.save!(:validate => false)
        end
      end       
    end
  end
end
