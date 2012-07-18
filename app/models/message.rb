# -*- encoding : utf-8 -*-
class Message < ActiveRecord::Base
  belongs_to :user

  scope :sent, where(:sent => true)
  scope :received, where(:sent => false)
  scope :unread, where(:read => false)
  
  #param from username
  #param recipients usernames
  def send_message(from, recipients)
    self.sent = true
    self.read = true
    
    if recipients == :all
      self.peer = "All"
    else
      if recipients.class.to_s != "Array"
        recipients = [recipients]
      end
      self.peer = recipients.join(", ")
    end    
    
    if from == :system
      self.user_id = 0
    else
      sender = User.find_by_username(from)
      if sender
        self.user_id = sender.id
      else
        return
      end 
    end
    if self.save
      async_send_message(self.id, recipients)
    end
  end
  
  
  private 
  
  def async_send_message(message_id, recipients)    
    message = Message.find(message_id)
    sender = User.find_by_id(message.user_id)
    received_msg = Message.new(:subject => message.subject,
                        :body => message.body,
                        :sent => false,
                        :read =>false)
    
    if recipients == :all
      recipient_users = User.select(:id)
    else
      recipient_users = User.select(:id).where(:username => recipients)
    end
    
    recipient_users.each do |recipient_user|
      msg = received_msg.dup
      msg.user_id = recipient_user.id
      msg.peer = message.user_id == 0 ? "System" : sender.username
      msg.save
    end
    if message.user_id == 0
      message.destroy
    end   
  end 
  #handle_asynchronously :async_send_message 
  
end
