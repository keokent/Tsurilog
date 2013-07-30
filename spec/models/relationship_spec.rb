require 'spec_helper'

describe Relationship do

  let(:user1) { FactoryGirl.create(:user) }
  let(:lure1) { FactoryGirl.create(:lure) }
  let(:relationship) { user1.relationships.build(lure_id: lure1.id) }

  subject { relationship }
  
  it { should be_valid }

  describe "user methods" do
    it { should respond_to(:user) }
    it { should respond_to(:lure) }
    its(:user) { should eq user1 }
    its(:lure) { should eq lure1 }
  end
end
