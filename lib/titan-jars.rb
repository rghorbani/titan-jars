require "titan-jars/version"


module Titan
  module Jars

    def self.jars_root
      File.join("#{File.dirname(__FILE__)}", "titan", "jars")
    end

    def self.load_jars!
      require 'java'
      Dir["#{jars_root}/*.jar"].each {|jar| require jar }
    end

    # This can be used by dependent gems to verify the Database versions have no mismatch.
    def self.ensure_version!(other, edition)
      return if ::Titan::Jars::TITAN_VERSION == other
      raise "Mismatch of Titan JAR versions. Already loaded titan-jars JAR files '#{::Titan::Jars::TITAN_VERSION}' but titan-#{edition}: '#{other}'." 
    end

  end
end

Titan::Jars.load_jars!