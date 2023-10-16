class User < ApplicationRecord
    has_many :friends
    has_secure_password
    validates :email , presence: true, format: {with: /\A[^@\s]{8}+@[^@\s]{8}+\z/ , message:" must have 8 charachters before and after '@' sign"}

end
