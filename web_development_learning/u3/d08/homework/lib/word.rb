class Word

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def to_pig

        wordArr = @word.split('')
        first_letter = wordArr.shift()


    if @word.start_with?('a','e','i','o','u')
     p @word + "way"
    else
      second_letter = wordArr.shift()
      if second_letter != /[aeiou]/

      else
        wordTemp = @word
        wordTemp[0] = ''
        p wordTemp + first_letter + "ay"
      end
    end
  end



end

word = Word.new('happy')
word.to_pig
