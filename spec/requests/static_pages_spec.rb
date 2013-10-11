require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    it 'should have the content Sample App' do 
      visit '/static_pages/home'
      expect(page).to have_content('Acopia.me')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title('Inicio')
    end
  end

  describe "Help page" do
    it "should have the content 'Ayuda'" do
      visit '/static_pages/help'
      expect(page).to have_content('Ayuda')
    end
  end
end
