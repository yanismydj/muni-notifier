class MuniRoutesController < ApplicationController
  def index
    @routes = Route.all
    render :json => @routes
  end
end
