# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "signin" do
    before { visit signin_path }

    describe "with invalid information" do
      before { click_button "Sign in" }

      it { should have_selector('div.alert.alert-error', text: 'Invalid') }

      describe "after visiting another page" do
        before { click_link "ホーム" }
        it { should_not have_selector('div.alert.alert-error') }
      end
    end

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Email", with: user.email.upcase
        fill_in "Password", with: user.password
        click_button "Sign in"
      end

      it { should have_link('サインアウト', href: signout_path) }
      it { should_not have_link('サインイン', href: signin_path) }

      describe "followed by signout" do
        before { click_link "サインアウト" }
        it { should have_link('サインイン') }
      end
    end
  end
end
