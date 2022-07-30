# frozen_string_literal: true

require_relative 'base_benchmark'

# write_file_benchmark.rb
class WriteFileBenchmark < BaseBenchmark
  attr_reader :file_size, :speed

  # @param process [WriteFileProcess]
  def initialize(process)
    super
    @file_size = process.size
  end

  def result_to_console
    super
    printf("Average speed: #{@speed} bytes/sec.\n")
  end

  private

  def calc_speed
    @speed = @time / @file_size
  end

  def post_initialize
    super
    validate_process
  end

  def validate_process
    super
    unless @process.instance_of?(WriteFileProcess.class)
      raise ArgumentError, 'Argument must be instance of WriteFileProcess'
    end
  end
end
