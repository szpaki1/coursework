require 'spec_helper'

describe PagesController do
 render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'blog'" do
    it "should be successful" do
      get 'blog'
      response.should be_success
    end
  end

  describe "GET 'publication'" do
    it "should be successful" do
      get 'publication'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'pdf'" do
    it "should be successful" do
      get 'pdf'
      response.should be_success
    end
  end

end
