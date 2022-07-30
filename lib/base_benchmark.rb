# frozen_string_literal: true

# base_benchmark.rb
# Benchmark for encapsulated object.
class BaseBenchmark
  attr_reader :process, :time

  # Ctor.
  # @param [AbsProcess] process that would be benchmarked.
  # @return [AbsProcess]
  def initialize(process)
    @process = process
    post_initialize
  end

  def post_initialize
    validate_process
    bench
  end

  # Validating process.
  def validate_process
    raise ArgumentError, 'process must be not null!' if @process.eql?(nil)
  end

  def bench
    start = Time.now
    process.run
    @time = (Time.now - start).to_int
  end

  def result_to_console
    printf("#{@process.name} finished for #{@time} seconds.")
  end
end
