class RegistrationsController < ApplicationController
	def new
	end

	def index
		@registrations = Registration.all
	end

	def show
		@registration = Registration.find(params[:id])
	end

	def create
		@registration = Registration.new(article_params)

		if @registration.save! == false
			redirect_to new_registration_path(@registration)
		else
			redirect_to @registration
		end
	end

	private
		def article_params
			params.require(:registration).permit(:studentfirstname, :studentlastname, :school, :grade, :homephone, :housenumber, :street, :city, :province, :postcode, :motherfirstname, :motherlastname, :motheremail, :mothercell, :fatherfirstname, :fatherlastname, :fatheremail, :fathercell, :emergfirstname, :emerglastname, :emergrelation, :emergphone)
		end
end
