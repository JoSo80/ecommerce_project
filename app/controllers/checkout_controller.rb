class CheckoutController < ApplicationController
  # POST/checkout/create
  # A product id will be in the params hash: params[:product_id]
  def create
    # load up the product
    product = Product.find(params[:product_id])

    if product.nil?
      redirect_to root_path
      return
    end

    # stablish connection to stripe (session)
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ["card"],
      success_url:          checkout_success_url,
      cancel_url:           checkout_cancel_url,
      line_items:           [
        {
          name:        product.name,
          description: product.set,
          amount:      (product.price * 100).to_i,
          currency:    "cad",
          quantity:    1
        }
      ]
    )

    # Redirect to payment screen via a javascript view
    respond_to do |format|
      format.js # render app/views/checkout/create.js.erb
    end
  end

  def success
    # successful payment
  end

  def cancel
    # cancelled payment
  end
end
