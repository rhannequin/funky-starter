# This file is used by Rack-based servers to start the application.

use Rack::Attack

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
