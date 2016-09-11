class User < ApplicationRecord

  enum role: [:user, :tutor, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    if User.count == 0
      self.role ||= :admin
    else
      self.role ||= :user
    end
  end

  def self.create_with_omniauth(auth)
      create! do |user|
       user.provider = auth['provider']
       user.uid = auth['uid']
       if auth['info']
         user.name = auth['info']['name'] || ""
		     user.email = auth['info']['email'] || ""
       end
      end
  end
end
