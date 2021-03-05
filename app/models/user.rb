# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'bcrypt'

class User < ApplicationRecord
  include BCrypt
  attr_accessor :password_hash, :password_confirmation

  has_many :conversations

  validates :first_name, presence: true
  validates :password, presence: true, length: { minimum: 6 }


  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
