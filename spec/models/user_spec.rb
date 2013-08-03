require 'spec_helper'

describe User do

  before do
    @user = User.new(name: "Example User", email:"user@example.org", password:"password", password_confirmation: "password")
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:relationships) }
  it { should respond_to(:remember_token) }
  it { should respond_to(:authenticate) }
  it { should respond_to(:registering?) }
  it { should respond_to(:register!) }

  describe "remember token" do
    before { @user.save }
    its(:remember_token) { should_not be_blank }
  end

  describe "following" do
    let(:lure) { FactoryGirl.create(:lure) }
    let(:user) { FactoryGirl.create(:user) }
    before do
      @user.save
      @user.register!(lure)
    end

    it { should be_registering(lure) }
    its(:user) { should include(lure) }
  end
end
