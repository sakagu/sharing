class UserMailer < ApplicationMailer
  def send_mail(order)
    @order = order
    mail to: order.user.email, subject:"#{@order.site_name}  納期回答"
  end
end
