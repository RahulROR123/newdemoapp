class UsersController < ApplicationController

 def index  
	 response = HTTParty.get('https://official-joke-api.appspot.com/random_joke')	
	@jokes = JSON.parse(response.body)
 end

 def store_api_data
 	 @joke = User.create(setup: params["setup"], punchline: params["punchline"])  
   redirect_to users_show_store_data_path(@joke)
 end
 
 def show_store_data
  @jokes = User.all
  @jokes =User.where('setup like ?',"#{params["setup"]}%")
 end

 def destroy
 	@joke = User.find(params[:id])
   @joke.destroy
   redirect_to users_show_store_data_path
 end

 def edit
 		@joke = User.find(params[:id])
 end
 
 def update_store_data
 	@joke = User.find(params[:id])
 	 
 	 if @joke.update(setup: params["setup"], punchline: params["punchline"])
 	   	 redirect_to users_show_store_data_path
 	   else
 	   	render 'edit'
 	  end
 end

end
