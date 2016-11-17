require('sinatra')
require('sinatra/reloader')
require('./lib/anagram?')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @list_of_words =
  # until loop generating list of words sandwiched between li tags
  erb(:result)
end
