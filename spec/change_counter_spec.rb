require('rspec')
require('pry')
require('change_counter')

describe('Fixnum#change_counter') do
  it('takes input from the user and outputs the input') do
    expect(50.change_counter()).to(eq(50))
  end
end
