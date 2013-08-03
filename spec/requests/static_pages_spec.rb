# -*- coding: utf-8 -*-
require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'biteへようこそ'" do
      visit "/static_pages/home"
      expect(page).to have_content('biteへようこそ')
    end
  end

  describe "Hlep page" do

    it "should have the content 'ヘルプ'" do
      visit "/static_pages/help"
      expect(page).to have_content('ヘルプ')
    end
  end
end
