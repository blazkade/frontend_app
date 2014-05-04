class ReceiveController < ApplicationController
	skip_before_action :verify_authenticity_token
  def index
  	#http://guides.rubyonrails.org/v3.2.13/action_controller_overview.html
  	@addeshops = Addeshop.all
  	@eshop = params[:eshopAddress]
  	name = params[:productName]
  	price = params[:productPrice]
  	@response = "nazev produktu: " + name + ", cena produktu: " + price

  	@addeshop = Addeshop.find_by eshopAddress: @eshop
  	if @addeshop
  		# render :text => @addeshop.eshopAddress + " " + @addeshop.status
  		@addeshop.update_attribute(:status, "vyrizeno")
  		@addeshop.update_attribute(:response, @response)
  		 render :text => @addeshop.eshopAddress + " " + @addeshop.status + " " + @addeshop.response
  	else
  		render :text => "eshop nenalezen"
  	end
  	
  end
end
