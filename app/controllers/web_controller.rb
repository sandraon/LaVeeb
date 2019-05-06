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
  def group
    @homepages = Homepage.all
    @groups = Group.all
  end

  def foodmenu
    @homepages = Homepage.all
    @menus = Menu.all
  end
end