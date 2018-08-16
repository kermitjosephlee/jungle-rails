class Admin::BaseController < ApplicationController
  http_basic_authenticate_with name: Rails.configuration.admin[:username], password: Rails.configuration.admin[:password]
end
