# frozen_string_literal: true

require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'

class BaseBenchmarkTest < Minitest::Test
  def setup
    @process = SleepingProcess.new('sleeping')
    @benchmark = BaseBenchmark.new(@process)
  end

  def sleeping_time_5_seconds_bench
    expected = 5
    expect(@benchmark.time).eql?(expected)
  end
end
