 require 'rails_helper'
 RSpec.describe UsersController, type: :controller do
  before(:each) do
  @joke = create(:user)
  end

   describe 'GET #index' do
    it 'ThirdAPI data' do
      get :index
      # response.should be_successful
    end
   end
   
    describe 'GET' do
    it 'store_api_data' do
      get :store_api_data
      expect(response)
    end
   end

    describe 'Delete' do
    it 'Destroy' do
      delete :destroy, params: {id: @joke.id}
      expect(response).to redirect_to("/users/show_store_data")
    end
   end

    describe '' do
    it 'Edit' do
      get :edit, params: {id: @joke.id}
      expect(response)
    end
   end

  describe 'update_store_data' do
    it 'Update' do
      post :update_store_data, params: {id: @joke.id}
      expect(response).to redirect_to("/users/show_store_data")
      # it 'Not update '
      #  response.should render_template(:edit)
    end
   end

  describe 'show_store_data' do
    it 'Show all data' do
      get :show_store_data, params: {id: @joke.id}
      expect(response)
    end
   end




 end