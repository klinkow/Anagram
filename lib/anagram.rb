class String
  define_method(:anagram) do |master_word|
    input = split(' ')
    output = []
    master = master_word.split('')

    input.each() do |word|

      # split_word = word.split('')
      # if split_word.length.==(master.length)
      #
      #   split_word.each() do |letter|
      #
      #     if master.include?(letter)
      #       split_word.delete_at(split_word.index(letter))
      #     end
      #     # binding.pry
      #   end
      #   if split_word.==([])
      split_word = word.split('')
        if split_word.sort().==(master.sort())
          output.push(word)
        end
      end
    # end
    output
  end
end
