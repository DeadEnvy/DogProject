#Marcus Mamott - Pangram
#September 14, 2018

class Pangram 
    def self.is_pangram?(input)       
        ('a'..'z').all? { |word| input.downcase.include? (word) }
    end
end