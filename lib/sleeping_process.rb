# frozen_string_literal: true

require_relative 'base_process'

# sleeping_process.rb
# Just test class.
class SleepingProcess < BaseProcess
  def run
    sleep(5)
  end
end
