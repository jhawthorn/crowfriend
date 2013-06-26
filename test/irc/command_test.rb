require 'minitest/autorun'
require 'crowfriend/irc/command'

class CommandTest < MiniTest::Unit::TestCase
  def test_notice
    str = ':morgan.freenode.net NOTICE * :*** Looking up your hostname...'
    msg = parse(str)
    assert_equal 'morgan.freenode.net', msg.prefix
    assert_equal 'NOTICE', msg.command
    assert_equal ['*', '*** Looking up your hostname...'], msg.params
    assert_equal str, msg.to_s
  end
  def test_join
    str = 'JOIN #testing'
    msg = parse(str)
    assert_nil msg.prefix
    assert_equal 'JOIN', msg.command
    assert_equal ['#testing'], msg.params
    assert_equal str, msg.to_s
  end
  private
  def parse str
    Crowfriend::Irc::Command.parse str
  end
end

