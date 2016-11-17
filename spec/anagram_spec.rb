require('rspec')
require('anagram')
require('pry')

describe('String#anagram') do
  it('returns the input word as an array element if it is an anagram of the argument word') do
    expect('dog'.anagram('god')).to(eq(['dog']))
  end

  it('returns any of the input words (as an array) that are an anagram of the argument word') do
    expect('dog goo odg'.anagram('god')).to(eq(['dog', 'odg']))
  end

end
