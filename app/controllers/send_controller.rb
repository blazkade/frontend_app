class SendController < ApplicationController
	require "net/http"
    require "uri"

    def index
        @addeshops = Addeshop.all
	end
	# def data
 #        @test = ""
	# 	@addeshops = Addeshop.all
 #        @addeshops.each do |eshop| 
 #        uri = URI.parse("http://school.turcan.cz/NZIW/ada.php") #tady bude pak odkaz na backend 
 #        http = Net::HTTP.new(uri.host, uri.port)
 #        request = Net::HTTP::Post.new(uri.request_uri)
 #        request.set_form_data({"eshopAddress" => eshop.eshopAddress }) #tady budu vyplnovat pozadavek
 #        response = http.request(request)
 #        @aaa = response.body
 #        @test += @aaa +"\n"
 #        end
	# end
    def data
        my_eshopAddress = params[:my_eshopAddress]
        uri = URI.parse("http://localhost:3000/receive") #tady bude pak odkaz na backend 
        http = Net::HTTP.new(uri.host, uri.port)
        request = Net::HTTP::Post.new(uri.request_uri)
        request.set_form_data({"eshopAddress" => my_eshopAddress, "productName" => "Samsung GALAXY S5 (SM-G900) Charcoal Black" }) 
        response = http.request(request)
        @aaa = response.body  
    end
end
