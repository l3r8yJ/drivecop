# frozen_string_literal: true

# base_process.rb
# Abstract process for benchmarking
class BaseProcess
  attr_reader :name

  # @return []
  def run
    nil
  end

  def initialize(name)
    @name = name
    post_initialize
  end

  def post_initialize
    nil
  end
end
