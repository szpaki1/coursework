require 'spec_helper'

describe PostsController do
  render_views

  describe "GET 'post'" do
    it "should be successful" do
      get 'post'
      response.should be_success
    end

    it "should have the right title" do
      get 'post'
      response.should have_selector("title", :content => "Create a New")
    end
  end

end
