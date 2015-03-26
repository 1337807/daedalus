require 'daedalus/cli'

class CliTest < MiniTest::Unit::TestCase
  def setup
    game = mock()
    @cli = Daedalus::Cli.new(game)
    @output = @cli.output = StringIO.new
  end

  def test_game_does_not_execute_exit
    @cli.input = StringIO.new("exit\n")
    @cli.game.expects(:execute).never
    @cli.start
  end

  def test_game_does_not_execute_goodbye
    @cli.input = StringIO.new("quit\n")
    @cli.game.expects(:execute).never
    @cli.start
  end
end
