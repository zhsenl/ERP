# -*- encoding : utf-8 -*-
module SessionsHelper
  def sign_in(user, remember)
    if remember
      cookies.signed[:current_user] = {
        :value => [user.id, user.salt],
        :expires => 1.week.from_now.utc
      }
    else
      cookies.signed[:current_user] = [user.id, user.salt]
    end
    current_user = user
  end

  def current_user
    @current_user ||= user_from_cookies
  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
    cookies.delete(:current_user)
    current_user = nil
  end

  def deny_access
    redirect_to signin_path, :notice => "你没有权限进行此项操作."
  end
  
  def set_current_enterprise(enterprise)
    @current_enterprise = enterprise
    cookies.signed[:current_enterprise] = {
      :value => [current_user.id, enterprise.id],
      :expires => 1.week.from_now.utc
    }    
  end
  
  def current_enterprise
    @current_enterprise ||= enterprise_from_cookies
  end

  private

  def user_from_cookies
    User.authenticate_with_salt(*remember_user_token)
  end

  def remember_user_token
    cookies.signed[:current_user] || [nil, nil]
  end
  
  def enterprise_from_cookies
    enterprise = Enterprise.find_by_id(remember_enterprise_token[1])
    (remember_enterprise_token[0] == current_user.id) ? enterprise : nil
  end
  
  def remember_enterprise_token
    cookies.signed[:current_enterprise] || [nil, nil]
  end
end
