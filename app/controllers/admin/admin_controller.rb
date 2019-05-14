class Admin::AdminController < Admin::ApplicationController
  def login
    render template: "login/login"
  end

  def index
  end
end
