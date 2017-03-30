RSpec.configure do |config|
  config.expect_with(:rspec) { |c| c.syntax = :should }
end

require_relative '../lib/trading'


class TestObserver

  attr_reader :orders, :trades

  def initialize
    @orders = []
    @trades = []
  end

  def trade(obj)
    @trades << obj
  end

  def order(obj)
    @orders << obj
  end
end
