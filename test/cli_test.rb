require 'cli'

class CliTest < MiniTest::Unit::TestCase
  def setup
    @cli = Cli.new
    @output = @cli.output = StringIO.new
  end

  def test_exit_command_does_not_dispatch
    @cli.input = StringIO.new("exit\n")
    @cli.dispatch.expects(:execute).never
    @cli.start
  end

end
