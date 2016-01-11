class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  ddevise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]

    attr_accessor :login

    validates :name, :presence => true, length: { maximum: 40 }


    def self.find_for_database_authentication(warden_conditions)
      	conditions = warden_conditions.dup
      	if login = conditions.delete(:login)
        	where(conditions.to_hash).where(["lower(name) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      	else
        	where(conditions.to_hash).first
      	end
    end
end
