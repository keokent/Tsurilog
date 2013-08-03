# -*- coding: utf-8 -*-
require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'bite'" do
      visit "/"
      expect(page).to have_content('bite')
    end
  end

  describe "Help page" do

    it "should have the content 'help'" do
      visit "/help"
      expect(page).to have_content('help')
    end
  end
end
