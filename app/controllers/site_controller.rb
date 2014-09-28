class SiteController < ApplicationController
  def home
  	# @ip=request.remote_ip()
  end

  def about
  end

  def faq
  end

  def todo
  	@title = "To Do List "
  end
end
