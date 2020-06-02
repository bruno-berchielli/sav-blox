class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :cpf, presence: true, uniqueness: true
  validates_inclusion_of :role, :in => ['admin', 'student', 'professor'], :allow_nil => false
  validates :password, presence: true, length: {minimum:6, maximum:16}
  has_secure_password
  VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
  before_save { self.email = email.downcase }
end
