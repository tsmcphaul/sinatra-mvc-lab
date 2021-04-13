class PigLatinizer
    # def piglatinize(word)
    #     vowels = ["a", "i", "e", "o", "u"]
    #     way_words = ["I", "i", "Once", "upon", "and", "along", "in", "eighty", "until", "Enumeration", "a", "it", "an", "old", "alone"]
    #     if way_words.include?(word)
    #       word + "way"
    #     elsif vowels.include?(word[0])
    #       word + "ay"
    #     else
    #       consonants = ""
    #       while !vowels.include?(word[0])
    #         consonants << word[0]
    #         word = word.split("")[1..-1].join
    #       end
    #       word + consonants + "ay"
    #     end
    #   end
    
    #   def translate(string)
    #     string.split.collect{|word| piglatinize(word)}.join(" ")
    #   end

    # def piglatinize(word)
    #     return word if %w[and an in].include?(word) #one syllable exceptions
    #     letters = word.split("")
    #     letters.keep_if {|letter| letter != "."}
    #     if letters.size > 1
    #       until vowel?(letters[0]) 
    #         letters << letters.shift
    #       end
    #       letters  << "ay"
    #     end
    #     letters.join
    #   end
    
    #   def to_pig_latin(text)
    #     words = text.split(" ")
    #     words.map! {|word| piglatinize(word)}
    #     words.join(" ")
    #   end
    
    #   def vowel?(letter)
    #     letter.downcase
    #     letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u"
    #   end

    def piglatinize(string)
        letters = ('a'..'z').to_a
        vowels = %w[a e i o u A E I O U]
        consonants = letters - vowels
        word = string.split(" ")
        results = []

        word.each do |w| 
        if w.length == 1
            results << w + "way"
        elsif vowels.include?(w[0]) 
            results << w + "way"
        elsif consonants.include?(w[0].downcase) && consonants.include?(w[1]) && consonants.include?(w[2])
            results << w[3..-1] + w[0..2] + 'ay'
        elsif consonants.include?(w[0].downcase) && consonants.include?(w[1])
            results << w[2..-1] +w[0..1] + 'ay'
        elsif consonants.include?(w[0].downcase)
            results << w[1..-1] + w[0] + 'ay'
        else
            results << w 
        end
    end
    results.join(" ")
  end
end
  