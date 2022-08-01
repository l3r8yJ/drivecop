# frozen_string_literal: true

require_relative 'base_benchmark'

# write_file_benchmark.rb
class WriteFileBenchmark < BaseBenchmark
  attr_reader :file_size, :speed

  # @param process [WriteFileProcess] process for bench
  def initialize(process)
    super
    @file_size = process.content_size
    clearing(process)
  end

  def result_to_console
    super
    printf("Average speed: #{@speed} bytes/sec.\n")
  end

  def speed
    @time / @file_size
  end

  private

  def clearing(process)
    puts "Post bench clearing..."
    File.delete(process.fname)
    puts "All trash deleted!"
  end

  def validate_process
    super
    unless @process.is_a? WriteFileProcess
      raise ArgumentError, "Process must be an #{WriteFileProcess.class} instance."
    end
  end
end
