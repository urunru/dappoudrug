require 'rails_helper'

RSpec.describe DrugsController, :type => :controller do

  # describe "GET 'create'" do
  #   it "returns http success" do
  #     get 'create'
  #     expect(response).to be_success
  #   end
  # end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      expect(response).to be_success
    end
  end

end
