require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The change counter path', {:type => :feature}) do
  it('Processes a number input and returns the change equivalent') do
    visit('/')
    fill_in('number', :with => 67)
    click_button('Calculate')
    expect(page).to have_content("Your number in change is: 2 quarters, 1 dimes, 1 nickels and 2 pennies"
)
  end
end
