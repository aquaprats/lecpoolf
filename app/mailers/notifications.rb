class Notifications < ActionMailer::Base

  
  def forgot_password(to,password, sent_at = Time.now)
	@subject    = "Your lost password"
	@body['email']=to
	@body['password']=password
	@recipients = to
	@from = 'lecpool.team@gmail.com'
	@sent_on = sent_at
	@content_type = "text/html"
  end

  def activate(to,name,id, sent_at = Time.now)
	@subject    = 'Account activation at Lecpool'
	@body['name']=name
	@body['email']=to
	@body['id']=id
	@recipients = to
	@from = 'lecpool.team@gmail.com'
	@sent_on = sent_at
	@content_type = "text/html"
  end

end
