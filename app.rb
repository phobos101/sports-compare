require_relative "./models/car"

class SportCompare < Sinatra::Base

	# The home page
	get "/" do
		erb :home
	end

	# The page that shows the cars (INDEX)
	get "/cars" do
		@cars = Car.all
		erb :"cars/index"
	end

	# Show the page to add a new car record (NEW)
	get "/cars/new" do
		erb :"cars/new"
	end

	# Show a specific car (SHOW)
	get "/cars/:id" do
		@car = Car.find(params[:id])
		erb :"cars/show"
	end

	# Show the edit page for a specific car (EDIT)
	get "/cars/:id/edit" do
		@car = Car.find(params[:id])
		erb :"cars/edit"
	end

	# Update the value(s) of a specific car (UPDATE)
	put "/cars/:id" do
		@car = Car.find(params[:id])
		if @car.update_attributes(params[:car])
			redirect "/cars/#{@car.id}"
		else
			erb :"cars/edit" #Update to a failed page in future
		end
	end

	# Create a new car record (CREATE)
	post "/cars" do
		@car = Car.new(params[:car])
		if @car.save
			redirect "/cars"
		else
			redirect "/cars/new"
		end
	end

	# Delete a car record (DELETE)
	delete "/cars/:id/delete" do
		@car = Car.find(params[:id])
		if @car.destroy
			redirect "/cars"
		else
			erb :"cars/show"
		end
	end

end