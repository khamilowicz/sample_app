require 'spec_helper'

describe "StaticPages" do

  let(:title_desc){"Ruby on Rails Tutorial Sample App"}
  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', 
                                :text => "#{title_desc} | Home")
    end
  end

  describe "About page" do
    it "should have the h1 'about'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title of 'about'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{title_desc} | About Us")
    end
  end

  describe "Help page" do
    it "should have the h1 help page'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title help page'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{title_desc} | Help")
    end
  end

  describe "Contact page" do
    it "should have the h1 Contact page" do
    visit '/static_pages/contact'
    page.should have_selector('h1', :text => 'Contact')
    end
  

  it "should have the title contact page'" do
    visit '/static_pages/contact'
    page.should have_selector('title', :text => "#{title_desc} | Contact")
  end
end
end
