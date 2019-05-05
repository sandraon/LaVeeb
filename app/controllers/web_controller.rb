class WebController < ApplicationController
  def home
    @homepages = Homepage.all
  end
end