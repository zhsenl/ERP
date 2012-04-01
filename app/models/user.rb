# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  attr_accessor :password, :password_confirmation
  #attr_accessible :name, :email, :userName

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :username, :presence => true,
                        :length => {:maximum => 20},
                        :uniqueness => true,
                        :format => {:with => /\A[a-z\d]+\z/}
  validates :email, :presence => true,
                    :format => {:with => email_regex},
                    :uniqueness => true
  validates :password, :confirmation => true
  validates :name,     :presence => true

  before_save :encrypt_password
  
  #Roles start 
  ROLES = %w[admin staff enterprise operator]
  
  def roles=(roles)
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.sum
  end
  
  def roles
    ROLES.reject do |r|
      ((roles_mask || 0) & 2**ROLES.index(r)).zero?
    end
  end
  
  def is?(role)
    roles.include?(role.to_s)
  end
  #Roles end
  
  def correct_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end

  class << self
    def authenticate(username, submitted_password)
      user = find_by_username(username)
      return nil if user.nil?
      return user if user.correct_password?(submitted_password)
    end

    def authenticate_with_salt(id, cookie_salt)
      user = find_by_id(id)
      (user && user.salt == cookie_salt) ? user : nil
    end
  end

  private

  def encrypt_password
    self.salt = make_salt if new_record?
    self.encrypted_password = encrypt(password) if !password.nil? && password != ""
  end

  def encrypt(string)
    secure_hash("#{salt}--#{string}")
  end

  def make_salt
    secure_hash("#{Time.now.utc}--#{password}")
  end

  def secure_hash(string)
    Digest::SHA2.hexdigest(string)
  end

end

