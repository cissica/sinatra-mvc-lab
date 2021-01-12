require "pry"
class PigLatinizer

    def piglatinize(text)
        if text.include?(" ")
            to_pig_latin(text)
            elsif /^[aeiou]/i.match(text)
            "#{text}way"
                else 
                parts = text.split(/([aeiou].*)/)
                "#{parts[1]}#{parts[0]}ay"
        end 
    end

    def to_pig_latin(text)
        words_in_sentence = text.split(/\s/)
    
        pig_latinized_words = words_in_sentence.collect do |word|
          self.piglatinize(word)
        end
        new_sentence = pig_latinized_words.join(" ")
    end 
end 
