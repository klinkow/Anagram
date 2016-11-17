require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram path', {:type => :feature}) do
  it('returns any of the input words (as an array) that are an anagram of the argument word') do
    visit('/')
    fill_in('master_word', :with=> 'god')
    fill_in('check_words', :with=> 'dog goo odg')
    click_button('Check for Anagrams')
    expect(page).to have_content("dog")
    expect(page).to have_content("odg")
  end
end
