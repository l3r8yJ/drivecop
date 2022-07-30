# frozen_string_literal: true

require_relative 'lib/write_file_process'
require_relative 'lib/write_file_benchmark'

process = WriteFileProcess.new('writing txt file')
benchmark = WriteFileBenchmark.new(process)
benchmark.result_to_console
