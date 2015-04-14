# This file is used by Rack-based servers to start the application.

require 'rails'
require 'responders'
require 'sprockets'
require 'mysql2'
require 'uglifier'
require 'coffee-rails'
require 'jquery-rails'
require 'state_machine'
require 'resque'
require 'resque/plugins/workers/lock'
require 'redis-rails'
require 'thin'
require 'octokit'
require 'faker'
require 'omniauth'
require 'omniauth-github'
require 'omniauth-google-oauth2'
require 'safe_yaml/load'
require 'pubsubstub'
require 'securecompare'
require 'rails-timeago'
require 'ansi_stream'
require 'heroku'
require 'faraday'
require 'faraday-http-cache'
require 'validate_url'
require 'active_model_serializers'
require 'explicit-parameters'
require 'rack/cors'
require 'pry'
require File.expand_path('../../../config/application', __FILE__)

Shipit::Application.load_tasks