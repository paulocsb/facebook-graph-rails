class Api < ActiveRecord::Base

  def self.koala
    facebook = Koala::Facebook::API.new(FACEBOOK_CONFIG['access_token'])
    facebook.get_object("me/posts?fields=message,coordinates,created_time,link,name,privacy,description,from,id")
  end

end