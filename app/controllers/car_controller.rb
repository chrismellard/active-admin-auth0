class CarController < ApplicationController
  include Secured
  def new
    roles = session[:userinfo]["http://wwww.shuttlerock.com/claims/roles"]
  end

  def create
  end
end
