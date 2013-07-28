require 'spec_helper'

describe Review do
  
  subject { @review }
  
  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:lure_id) }
end
