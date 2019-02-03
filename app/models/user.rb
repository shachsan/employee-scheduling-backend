class User < ApplicationRecord
    has_many :dept_managers
    has_many :associates

    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
