class ApplicationController < ActionController::Base
  protect_from_forgery

  def redirect_externally
    p [ 'ApplicationController#redirect_externally', request.host ]

    redirect_to 'http://google.com'
  end
end
