require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @master_word = params.fetch('master_word')
  count = 0
  @list_of_words = ''
  output = params.fetch('check_words').anagram(params.fetch('master_word'))
  until count.==(output.length)
    @list_of_words << '<li>' + output[count] + '</li>'
    count += 1
  end
  erb(:result)
end
