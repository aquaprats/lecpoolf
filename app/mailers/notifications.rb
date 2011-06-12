class Notifications < ActionMailer::Base



  def activate(to,name,id, sent_at = Time.now)
	@subject    = 'Account activation at Lecpool'
	@body['name']=name
	@body['email']=to
	@body['id']=id
	@recipients = to
	@from = 'aquaprats@gmail.com'
	@sent_on = sent_at
	@content_type = "text/html"
  end

end
