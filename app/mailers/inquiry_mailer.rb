class InquiryMailer < ApplicationMailer
  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      from: 'ryotugboat@gmail.com',
      to:   'manager@example.com',
      subject: 'コロナ体調確認'
    )
  end
end
