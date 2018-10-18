class Year
    def initialize(date)         
        # Saving the arguments into an instance variable.
        @date = date
    end

    def self.leap?(date)
        return false unless date % 4 == 0
        return true unless date % 100 == 0
        date % 400 == 0
    end
end