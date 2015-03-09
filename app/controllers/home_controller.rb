class HomeController < ApplicationController

  def index
  end

  def callback
    logger.info(request.env['omniauth.auth'])
    redirect_to '/'
  end

end
