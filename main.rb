# frozen_string_literal: true

require_relative 'lib/write_file_process'
require_relative 'lib/write_file_benchmark'

WriteFileBenchmark.new(
  WriteFileProcess.new(
    WriteFileProcess.to_s
  )
).result_to_console
