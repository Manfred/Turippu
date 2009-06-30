require File.expand_path('../start', __FILE__)

describe "Tripcode" do
  it "should hash a password to a tripcode for a simple password" do
    Tripcode.hash('cows').should == 'Tqz/9YHxRA'
    Tripcode.hash('tripcode').should == '3GqYIJ3Obs'
  end
  
  it "should be compatible" do
    examples = 0
    failures = 0
    
    Dir[File.expand_path('../compatibility/*.txt', __FILE__)].each do |filename|
      File.open(filename) do |file|
        file.each_line do |line|
          password, expected = line.strip.split(/\s=\s/).map { |w| w.strip }
          examples += 1
          unless Tripcode.hash(password) == expected
            failures += 1
          end
        end
      end
    end
    
    percentage = ((examples - failures) * 1000 / examples) / 10.0
    assert_equal 100, percentage, "Expected to be 100% compatible, but was #{percentage}%"
  end
end