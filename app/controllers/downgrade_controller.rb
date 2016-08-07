class DowngradeController < ApplicationController
    def new
    end
    
    def create
        current_user.update_attribute(:standard, true)
        current_user.update_attribute(:premium, false)
        
        flash[:notice] = "You have successfully downgraded your account."
        
        redirect_to root_path
    end
end
