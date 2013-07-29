require 'spec_helper'

describe User do

  before do
    @user = User.new(name: "Example User", email:"user@example.org", password_digest:"password")
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }

end
