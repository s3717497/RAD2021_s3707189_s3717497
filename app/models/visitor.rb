class Visitor < ApplicationRecord
    validates :email,       presence: true,
                            format:  { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i},
                            uniqueness: { case_sensitive: false }
    before_save { email.downcase! }
end
