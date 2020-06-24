require 'rails_helper'

describe 'GET #index' do
  it "populates an array of tweets ordered by created_at DESC" do
    tweets = create_list(:tweet, 3) 
    get :index
    expect(assigns(:tweets)).to match(tweets)
  end
  

  it "renders the :index template" do
  end
end