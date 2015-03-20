require 'cli'

class CliTest < MiniTest::Unit::TestCase
  def setup
    @cli = Cli.new
    @output = @cli.output = StringIO.new
  end

  def test_game_does_not_execute_exit
    @cli.input = StringIO.new("exit\n")
    @cli.game.expects(:execute).never
    @cli.start
  end
end
