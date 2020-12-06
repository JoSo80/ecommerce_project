class CheckoutController < ApplicationController
  def create
    # establish connection with stripe and then redirect the user to the payment screen
  end

  def success
    # successful payment
  end

  def cancel
    # cancelled payment
  end
end
