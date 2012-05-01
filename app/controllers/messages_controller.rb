class MessagesController < ApplicationController
  def index
  end

  def new
  end
  
  def unread
    @messages = current_user.messages.unread    
    respond_to do |format|
      format.json { render json: @messages }
    end
  end
  
  def read
    @message = Message.find(params[:id])
    @message.update_attributes :read => true

    respond_to do |format|
      format.html { redirect_to messages_url }
      format.json { head :no_content }
    end
  end
end
