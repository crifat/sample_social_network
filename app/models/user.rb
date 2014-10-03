# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  email              :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  encrypted_password :string(255)
#

class User < ActiveRecord::Base
  attr_accessor :password

  validates :name, presence: true
  validates :email, presence: true
  validates :encrypted_password, presence: true

  before_save :encrypt_password


  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end


  private
  def encrypt_password
    self.encrypted_password = encrypt(password)
  end

  def encrypt(string)
    string          #Not the final implementation!
  end
end
