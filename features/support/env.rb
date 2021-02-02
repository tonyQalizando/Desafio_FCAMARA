require "cucumber"
require "httparty"
require "httparty/request"
require "httparty/response/headers"
require "faker"
require "rspec"
require_relative 'class_initializer.rb'

World(ClassInitializer)