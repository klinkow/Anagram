class String
  define_method(:anagram) do |master_word|
    input = split(' ')
    output = []
    master = master_word.split('')
    input.each() do |word|
      split_word = word.split('')
        if split_word.sort().==(master.sort())
          output.push(word)
        end
      end
    output
  end
end
