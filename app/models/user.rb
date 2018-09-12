class User < ApplicationRecord
  has_many :todos, foreign_key: :created_by

  has_secure_password
  validates :name, :email, :password_digest
end
