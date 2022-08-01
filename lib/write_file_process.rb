# frozen_string_literal: true

require_relative 'base_process'

# write_file_process.rb
# Writing to file process.
class WriteFileProcess < BaseProcess
  attr_reader :fname

  def run
    write
  end

  # @return [Integer] size of created file
  def content_size
    File.size(@fname)
  end

  private

  def post_initialize
    @fname = '.bench/bench.txt'
    puts "#{self.name}: creating content to write..."
    start = Time.now
    puts "Content created for #{(Time.now - start).to_int} seconds."
  end

  def write
    fills = '1'*1048576
    File.open(@fname, 'w') do |f|
      9999.times {f.write(fills) }
    end
  end

  def random_string
    (0...50).map { ('a'..'z').to_a[rand(26)] }.join
  end
end
