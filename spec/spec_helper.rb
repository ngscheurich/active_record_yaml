require "pathname"
require "bundler"

Bundler.require :default, :development

source_path = (Pathname.new(__FILE__).dirname + "../lib").expand_path
$LOAD_PATH << source_path

require "active_record_yaml"

ENV["RAILS_ENV"] = "test"

Combustion.initialize! :active_model
