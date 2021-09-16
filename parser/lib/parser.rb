require 'active_support'
require 'active_support/core_ext'
require 'active_support/concern'
require 'parser/version'
require 'parser/error'
require 'parser/cdl'
require 'parser/dsl'
require 'pry'

[
  'errors.en.yml'
].each do |yml|
  I18n.load_path << File.dirname(__FILE__) + "/config/locales/#{yml}"
end

module Parser
end
