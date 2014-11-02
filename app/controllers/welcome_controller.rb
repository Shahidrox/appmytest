class WelcomeController < ApplicationController
  
  def index
  	@products=Image.all
  end

  def send_mail
  	@data = {  
      :comment => params[:comment]
    }
    UserMailer.feedback_email(@data).deliver
    render :json => {:status => "thanks for sending mail"}
  end

end
