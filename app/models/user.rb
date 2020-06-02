class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :cpf, presence: true, uniqueness: true
  validates_inclusion_of :role, :in => ['admin', 'student', 'professor'], :allow_nil => false
  validates :password, presence: true, length: {minimum:6, maximum:16}
end
