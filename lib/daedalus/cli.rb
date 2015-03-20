module Daedalus
  class Cli
    attr_accessor :game, :input, :output

    def initialize(game)
      @input = $stdin
      @output = $stdout
      @game = game
    end

    def start
      system("clear") or system("cls")
      say "Welcome to Daedalus\n\n"

      infinity = true
      while infinity
        command = ask

        if command == 'exit' || command == 'quit'
          say "Goodbye"
          infinity = false
        else
          response = self.game.execute command
          say response
        end
      end
    end

    def ask
      self.input.gets.chomp
    end

    def say message
      self.output.puts message
    end

  end
end
