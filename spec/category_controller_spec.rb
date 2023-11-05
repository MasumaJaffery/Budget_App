require 'rails_helper'
RSpec.describe CategoriesController, type: :controller do
  before do
    @user = create(:user)
    sign_in @user
  end

  describe 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    it 'creates a new category' do
      # Add the test for creating a category
      # Example:
      expect do
        post :create, params: { category: { name: 'Test Category' } }
      end.to change(Category, :count).by(1)
    end
  end
end
