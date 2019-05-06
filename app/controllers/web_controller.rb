class WebController < ApplicationController
  layout 'web'
  def web
    @homepages = Homepage.all
  end
  def home
    @homepages = Homepage.all
  end
  def worker
    @homepages = Homepage.all
    @workers = Worker.all
  end
end