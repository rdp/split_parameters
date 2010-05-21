require 'sane' #gem
require __dir__ + "/../lib/split_parameters"
require 'spec/autorun'

describe SplitParameters do
  
  it "should allow for named splits"
  it "should allow for non named split"
  it "should still allow for the original"
  it "should throw if you call a poor method name"
  it "should throw if you call an out of order method name"

=begin



move_from_x(3).to_y(4)

move_from(3).to(4)

move_from(3,4)

def move_from_x_to_y(x, to_y)
end


def move_from_x_with_sq_y(x, y)
end


move_from(3).with_sq(34)


move_from_x(3).with_sq_y(34)

move_from(:x =>3, :y => 34))



setNumeratorandDenominator

[frac2 setNumerator: 1 andDenominator: 5];


-(void) setNumerator: (int) n andDenominator: (int) d {


frac2. setNumerator: 1 andDenominator: 5


def set(numerator, denominator)

end

set.numerator(n).and_denominator(d)

set_numerator(n).and_denominator(d)


=end

end
    
    
    
    
  
  
  