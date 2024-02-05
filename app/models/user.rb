class User < ApplicationRecord
    before_create :generate_authentication_token
    has_secure_password
    has_many :posts, dependent: :destroy

    private

    def generate_authentication_token
      self.authentication_token = SecureRandom.base58(24)
    end
end
