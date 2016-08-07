class ChargesController < ApplicationController
    def create
        customer = Stripe::Customer.create(
            email: current_user.email,
            card: params[:stripeToken]
        )
        
        charge = Stripe::Charge.create(
            customer: customer.id,
            amount: 15_00,
            description: "Blocipedia Membership - #{current_user.email}",
            currency: 'usd'
        )
        
        current_user.update_attribute(:standard, false)
        current_user.update_attribute(:premium, true)
        
        flash[:notice] = "Thanks for all the money, #{current_user.email}! Feel free to pay me again."

        redirect_to root_path
        
        rescue Stripe::CardError => e
        flash[:alert] = e.message
        redirect_to new_charge_path
    end
    
    def new
        @stripe_btn_data = {
            key: "#{ Rails.configuration.stripe[:publishable_key] }",
            description: "Blocipedia Membership - #{current_user.email}",
            amount: 15_00
        }
    end
end