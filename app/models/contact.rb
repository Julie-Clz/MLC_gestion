class Contact < MailForm::Base
  attribute :first_name, validate: true
  attribute :last_name, validate: true
  attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i
  attribute :message, validate: true
  attribute :nickname, captcha: true

  
  def headers
    {
      subject: "MLCI contact",
      to: "julie_clz@hotmail.fr",
      from: %("#{first_name} #{last_name}" <#{email}>)
    }
  end

end
