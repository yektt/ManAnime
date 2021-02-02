class Contact < MailForm::Base
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :topic,     :validate => true
  attribute :name,      :validate => true
  attribute :message,   :validate => true

  def headers
    {
      :subject => "My Contact Form -  #{topic} ",
      :to => "mananimeteam@gmail.com",
      :from => %("#{email} - #{name}")
    }
  end
end
