require('rspec')
require('pry')
require('change_counter')

describe('Fixnum#change_counter') do
  # it('takes input from the user and outputs the input') do
  #   expect(50.change_counter()).to(eq(50))
  # end

  it('takes input of 0 and outputs 0 quarters, 0 dimes, 0 nickels and 0 pennies') do
    expect(0.change_counter()).to(eq('0 quarters, 0 dimes, 0 nickels and 0 pennies'))
  end

  it('takes input of 75 and outputs the correct number of quarters') do
    expect(75.change_counter()).to(eq('3 quarters, 0 dimes, 0 nickels and 0 pennies'))
  end


end
