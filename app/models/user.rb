class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true
    validates :email, uniqueness: true
    validates_format_of :email, with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, :multiline => true
end
