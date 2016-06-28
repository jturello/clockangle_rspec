require('rspec')
require('clock_angle')
# require("pry")

describe('String#clock_angle') do

  it('is equal to 0.0 degrees when time equals 12:00') do
    expect("12:00".clock_angle()).to(eq(0.0))
  end

  it('is equal to 180.0 degrees when time equals 6:00') do
    expect("6:00".clock_angle()).to(eq(180.0))
  end

  it('is equal to 82.5 degrees when time equals 12:15') do
    expect("12:15".clock_angle()).to(eq(82.5))
  end

  it('is equal to 165.0 degrees when time equals 12:15') do
    expect("12:30".clock_angle()).to(eq(165.0))
  end

end



# time/60



# write a method that tells us, given a certain time, the distance between the minute and hour hands on an analog clock. For example, 12 o'clock would return 0º and 6 o'clock would return 180º.
#
# Always return the smaller distance and be as precise as possible. Make sure to think about the object class of the input - all form inputs from params are strings. In order to convert a String to a Float, you need to use the String#to_f() method.
