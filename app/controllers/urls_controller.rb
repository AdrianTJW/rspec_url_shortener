class UrlsController < ApplicationController

	def index
	 	render :text => "success", :status => 209
	end

	def create
		@url = Url.new(urls_params)
		o = [('a'..'z'), ('A'..'Z'), (1..9)].map { |i| i.to_a }.flatten
		random = (0...10).map { o[rand(o.length)] }.join	
		@url.short_url = random
		if @url.save
			redirect_to urls_path
		else
			@errors = "Invalid url"
			redirect_to urls_path
		end		
	end

	private

	def urls_params
		params.permit(:long_url)
	end

end


