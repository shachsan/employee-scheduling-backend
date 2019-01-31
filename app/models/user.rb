class User < ApplicationRecord
    has_many :dept_managers
    has_many :associates
end
