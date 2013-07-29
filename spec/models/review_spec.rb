require 'spec_helper'

describe Review do

  before { @review = Review.new(content:"CooolReview", user_id:"1", lure_id:"1") }

  subject { @review }
  
  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:lure_id) }

end
