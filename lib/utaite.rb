require 'utaite/version'
require 'apache_log/parser'

module Utaite
  class SortedLog
    attr_reader :logs

    def initialize(lines)
      parser = ApacheLog::Parser.new('common')
      sorted_logs = []
      lines.split("\n").each do |line|
        sorted_logs << "#{parser.parse(line)[:request][:method]} #{parser.parse(line)[:request][:path]}"
      end

      @logs = srt(sorted_logs)
    end

    private

    def srt(logs)
      hash = {}
      logs.each do |log|
        hash[log] ||= 0
        hash[log] += 1
      end
      hash
    end
  end

  class Utaite
    def self.run
      self.out($stdin.read)
    end

    def self.out(log_lines)
      sorted_logs = SortedLog.new(log_lines).logs
      outp(sorted_logs)
    end

    private

    def self.outp(paths)
      puts ' times | path'
      puts '-------|-----'
      paths.each do |path|
        puts "#{printf('%6d', path[1])} | #{path[0]}"
      end
    end
  end
end
