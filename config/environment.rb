# encoding: UTF-8

require_relative 'application'

ENV['RACK_MULTIPART_LIMIT'] = '1024'
ActiveRecord::Base.pluralize_table_names=false

# Initialize the Rails application.
Rails.application.initialize!
