# frozen_string_literal: true

require_relative 'base_process'

# write_file_process.rb
# Writing to file process.
class WriteFileProcess < BaseProcess
  attr_reader :size, :content

  def run
    write
  end

  private

  def post_initialize
    @content = content
  end

  def write
    File.write('.bench/bench.txt', @content)
  end

  # @return [Integer] size of created file
  def size
    @size = File.size('.bench/bench.txt')
  end

  def content
    big_content = ''
    (0..(2**17)).each do
      big_content += "#{random_string}\\n"
    end
    big_content
  end

  def random_string
    (0...50).map { ('a'..'z').to_a[rand(26)] }.join
  end
end
