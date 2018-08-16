class OrderMailer < ApplicationMailer
  default from: "no-reply@example.com"

  def order_email(order)
    @order = Order.find(order)
    @url = 'jungle.com'
    mail(to: "kermitjosephlee@gmail.com", subject: "Order Number: #{@order.id}")
    Rails.logger.info("**********   order_email fired!  ***********")
  end
end
