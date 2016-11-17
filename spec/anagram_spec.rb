require('rspec')
require('anagram?')

describe('Fixnum#coin_combos') do
  it('returns the number of quarters required to add up to an input that is divisible by 25') do
    expect(75.coin_combos).to(eq([3,0,0,0]))
  end
end
