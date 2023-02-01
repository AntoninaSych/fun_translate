require 'faraday'
require 'json'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.setup

module FunTranslate
   def self.client
        FunTranslate::Client.new
   end
end