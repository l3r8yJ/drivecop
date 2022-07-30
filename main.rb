# frozen_string_literal: true

require_relative 'lib/write_file_process'
require_relative 'lib/base_benchmark'

process = WriteFileProcess.new('writing txt file')
benchmark = BaseBenchmark.new(process)
benchmark.result_to_console
