class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.locale = auth.locale
      user.oauth_token = auth.credentials.oauth_token
      user.oauth_expires_at = Time.at(auth.credentials)
      user.save!
    end
  end  
end
