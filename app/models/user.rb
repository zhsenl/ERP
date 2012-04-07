# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  attr_accessor :password, :password_confirmation
  
  has_many :manage_relationships, :dependent => :destroy
  has_many :enterprises, :through => :manage_relationships
  
  #validation start
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :username, :presence => true,
                        :length => {:maximum => 20},
                        :uniqueness => true,
                        :format => {:with => /\A[a-z\d]+\z/}
  validates :email, :presence => true,
                    :format => {:with => email_regex},
                    :uniqueness => true
  validates :password, :presence => true, :on => :create
  validates :password, :confirmation => true
  validates :name,     :presence => true
  #validation end

  before_save :encrypt_password
  
  #Roles start 
  ROLES = %w[admin staff enterprise operator]
  ROLES_ZH = {'admin' => '超级管理员', 'staff' => '公司员工', 'enterprise' => '企业管理员', 'operator' => '企业操作员'}
  
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
  
  
  def managing?(enterprise)
    enterprise_id = enterprise.respond_to?("id") ? enterprise.id : enterprise
    manage_relationships.find_by_id(enterprise.id)
  end
  
  def manage!(enterprise)
    enterprise_id = enterprise.respond_to?("id") ? enterprise.id : enterprise
    manage_relationships.create!(:enterprise_id => enterprise_id)
  end
  
  def unmanage!(enterprise)
    enterprise_id = enterprise.respond_to?("id") ? enterprise.id : enterprise
    manage_relationships.create!(:enterprise_id => enterprise_id).destroy
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

