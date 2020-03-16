class ContactUsController < ApplicationController
	def create
		puts "------------------------------------------------------------------"
		@contact_details = ContactDetail.new(:name => params[:name],:email => params[:email],:contact_number => params[:number],:subject => params[:subject],:message=>params[:message])
		if @contact_details.save
			ApplicationMailer.with(contact_details: @contact_details).notify_email.deliver_now
			# flash[:notice] = "Post successfully created"
			# redirect_to home_index_1path
		end
		# redirect_to action: "index",controller: "home"
	end

end
