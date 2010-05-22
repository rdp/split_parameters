require 'sane' #gem
require __dir__ + "/../lib/split_parameters"
require 'spec/autorun'

describe SplitParameters do
  class A
    def move(from_x, to_y)
      [from_x, to_y]
    end
    
    def meth1
    end
    
    def this(arg_x)
      self
    end
    
    def move2(from_x, to_y, to_z)
      [from_x, to_y, to_z]
    end

    def move3_from_x_to_y_to_z(x,y,z)
      [x,y,z]
    end

  end
  
  subject = A.new
  it "should allow for named splits" do
    subject.move_from_x(3).to_y(4).should == [3,4]
  end
  
  it "should allow for non named split" do
    subject.move_from(3).to(4).should == [3,4]    
  end
  
  it "should still allow for the original" do
    subject.move(3,4).should == [3,4]
  end
  
  it "should throw if you call a poor method name" do
    proc {subject.move_from_x(3).to_z(4)}.should raise_error NoMethodError
    proc {subject.move_from_z(3)}.should raise_error NoMethodError
    proc {subject.move_from(3).meth1}.should raise_error NoMethodError
    proc {subject.this(3).meth1}.should_not raise_error NoMethodError
    proc {subject.this_arg_x(3).meth1}.should_not raise_error NoMethodError
    proc {subject.this_arg(3).meth1}.should_not raise_error NoMethodError
  end
  
  it "should throw if you call an out of order method name" do


  end


=begin

def move(from_x, to_y)
end

i.move(3,4)

i.move_from_x(3).to_y(4) # this one--it's like an iter

i.move_from(3).to(4)


def move_from_x_to_y(x,y)

move_from_x(3).to_y(4)
move_from(3).to(4)

def set_numerator_n_and_denominator_d(n, d)

end

.set_numerator(3).and_denominator(4)
.set_numerator_n(3).and_denominator(5)



until complaints emerge...


def set(numerator, and_denominator)
end

i.setNumerator(3).andDenominator(4)
i.move(3,4)
i.set_numerator(3).and_denominator(4)


i.set_numerator(3).and_denominator(4)

i.set.numerator(3).and_denominator(4)





move_from_x(3).to_y(4)

move_from(3).to(4)

move(3,4)

def move_from_x_to_y(x, to_y)
end


def move_from_x_to_y(x, y)

move_from(x).to(y)



def move_from_x_with_sq_y(x, y)
end


move_from(3).with_sq(34)


move_from_x(3).with_sq_y(34)


move_from(:from_x =>3, :to_y => 34))



setNumeratorandDenominator

[instance setNumerator: 1 andDenominator: 5];


-(void) setNumerator: (int) n andDenominator: (int) d {


instance.setNumerator(1).andDenominator(5)


def set(numerator, and_denominator)

end

set.numerator(n).and_denominator(d)

set_numerator(n).and_denominator(d)


=end

end