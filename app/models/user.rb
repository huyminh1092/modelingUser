class User < ApplicationRecord
    validates :name, presence: true
    validates :name, length: { minimum: 2 }
    validates :name, length: { maximum: 200 }
    validates :email, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Email invalid"  },
              uniqueness: { case_sensitive: false },
              length: { minimum: 4, maximum: 254 }
   
    validates :password, presence: true, length: { minimum: 6 }

    has_secure_password

end
 