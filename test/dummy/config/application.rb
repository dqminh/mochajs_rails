require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "action_view/railtie"
begin
  require "active_model/railtie"
rescue LoadError
end
require "sprockets/railtie"

Bundler.require(*Rails.groups)
require "mochajs_rails"

module Dummy
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.assets.enabled = true
    config.assets.version = '1.0'
  end
end

