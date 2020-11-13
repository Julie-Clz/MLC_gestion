class Quotation < MailForm::Base
  attribute :first_name, validate: true
  attribute :last_name, validate: true
  attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :telefon, validate: /\A(?:(?:\+|00)33|0)\s*[1-9](?:[\s.-]*\d{2}){4}\z/i
  attribute :message, validate: true
  attribute :nickname, captcha: true

  
  def headers
    {
      subject: "MLCI contact",
      to: "mlcigestion@gmail.com",
      from: %("#{first_name} #{last_name}" <#{email}> <#{telefon}>)
    }
  end

end
