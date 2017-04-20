require('sinatra')
require('sinatra/reloader')
require('./lib/change_counter')
require('rspec')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/display') do
  @number_input = params.fetch('number').to_i()
  @change_output = @number_input.change_counter()
  erb(:display)
end
