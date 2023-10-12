class User < ApplicationRecord
    has_secure_password
    validates :email , presence: true, format: {with: /\A[^@\s]{8}+@[^@\s]{8}+\z/ , message:"email must have 8charachters before and after '@'sign"}

end
