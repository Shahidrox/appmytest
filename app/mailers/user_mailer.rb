class UserMailer < ActionMailer::Base
  default from: "rox.shahid@gmail.com"

  def feedback_email(data)
    @data = data
    @message = @data[:comment]
    mail(to: 'rox.shahid@gmail.com', subject: 'feedback from test')
  end
end
