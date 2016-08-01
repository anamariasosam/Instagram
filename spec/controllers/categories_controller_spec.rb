require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  describe "GET #show" do

    it "it shows product on catalog view" do
      category = FactoryGirl.create(:category)
      product = FactoryGirl.create(:product, category_id: category.id)
      get :show, id: category.id
      assigns(:products).should eq([product])
    end
  end

end
