class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validates => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname, :captcha => true

  def headers 
    {
      :subject => "Your Attention is Reqested",
      :to => "davidjanczyn@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end

end