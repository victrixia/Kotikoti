class User < ActiveRecord::Base
  has_secure_password

  has_many :newsitems

 validates :password, :presence => true, :confirmation => true, length: {minimum: 6}, format: {with: /\d.*[A-Z]|[A-Z].*\d/, message: " / salasanan pitäisi sisältää yksi numero ja yksi iso kirjain"}, :if => :password

end
