require 'spec_helper'

describe Lure do
  before do
    @lure = Lure.new(name: "Flick Shake", lure_type: "soft")
  end

  subject { @lure }

  it { should respond_to(:name) }
  it { should respond_to(:photo_url) }
  it { should respond_to(:lure_type) }
end
