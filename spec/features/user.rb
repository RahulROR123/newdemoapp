require "rails_helper"
RSpec.feature "users", type: :feature do
 
   context 'jokes material' do
   	 before :each do
   	 	@user = User.create(setup: "rf", punchline: "egugdj")
   	 end

   	 it 'show api Data' do
        visit "/"
      expect(page)
    end

     it 'Show store data' do
        visit "/users/store_api_data"
        click_link 'Destroy'
      expect(page).not_to have_text('New UI Experience')
    end
 
     it 'Edit' do
        visit "/users/#{@user.id}/edit"
       
    end
   end

 end