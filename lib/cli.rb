require 'dispatch'

class Cli
  attr_accessor :dispatch, :input, :output
  
  def initialize
    @input = $stdin
    @output = $stdout
    @dispatch = Dispatch.new
  end
  
  def start
    system("clear") or system("cls")
    say "Welcome to Daedalus\n\n" 
    
    infinity = true
    while infinity
      command = self.input.gets.chomp
      if command == 'exit' || command == 'quit' || command == 'oh god why stop it why'
        say "Bang! You're dead."
        infinity = false
      else
        response = dispatch.execute command
        say response
      end
    end
  end

  def say message
    self.output.puts message
  end
end
