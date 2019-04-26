class LoginController < ApplicationController
    def login
      render template: "login/login"
    end

end