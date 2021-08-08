class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def default_url_options
    { host: "localhost:3000" } # ENV['SE_HEROKU_DOMAIN'] ||
  end
end
