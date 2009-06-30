require File.expand_path('../start', __FILE__)

describe "Tripcode" do
  it "should hash a password to a tripcode for a simple password" do
    Tripcode.hash('cows').should == 'Tqz/9YHxRA'
  end
end