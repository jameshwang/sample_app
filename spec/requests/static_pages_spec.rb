require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
  	@content = "Sample App"
  	it "should have the content '#{@content}'" do
  		visit '/static_pages/home'
  		page.should have_content(@content)
  	end

  	it "should have the title 'Home'" do
  		visit '/static_pages/home'
  		page.should have_selector('title',
  			:text => " | Home")
  	end
  end
  describe "Help Page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end
  	it "should have the title 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('title',
  			:text => " | Help")
  	end
  end
  describe "About Page" do
  	@content = "About Us"
  	it "should have the content '#{@content}'" do
  		visit '/static_pages/about'
  		page.should have_content(@content)
  	end
  	it "should have the title 'About'" do
  		visit '/static_pages/about'
  		page.should have_selector('title',
  			:text => " | #{@content}")
  	end
  end
end
