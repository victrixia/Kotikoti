class User < ActiveRecord::Base
  has_secure_password

  has_many :newsitems

  validates :password, length: {minimum: 6}
  validates :password, format: {with: /\d.*[A-Z]|[A-Z].*\d/, message: "pitäisi sisältää yksi numero ja yksi iso kirjain"}


end
