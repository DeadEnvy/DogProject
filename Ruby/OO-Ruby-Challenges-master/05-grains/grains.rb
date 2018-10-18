#Marcus Mamott - Grains
#September 14, 2018

class Grains
    def self.square(squares)
        1 << (squares - 1)
      end
    
      def self.total
        square(65) - 1
      end
end