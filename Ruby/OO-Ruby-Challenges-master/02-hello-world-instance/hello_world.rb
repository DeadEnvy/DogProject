#Marcus Mamott - Hello World Instance
#September 14, 2018

class HelloWorld
    attr_accessor :name

    def initialize(name)         
        # Here we save the arguments in an instance variable.
        @name = name
    end

    def hello(greeting = 'World')
        "Hello, #{greeting}. My name is #{name}!"
    end
end