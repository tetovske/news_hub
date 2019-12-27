require 'rails_helper'
include AuthHelper

RSpec.describe DashboardController, type: :controller do

 before(:each) do
  login_user
 end

 context "GET #index" do
  it "renders the :index view" do 
   get :home
   expect(response).to render_template("home")
  end
 end

end