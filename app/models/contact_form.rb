class ContactForm < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :subject
  attribute :message

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "#{subject}",
      :to => "bhavikpatel576@gmail.com",
      :from => %("#{name}" <#{email}>),
      :message => "#{message}"
    }
  end
end