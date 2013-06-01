class MainController < ApplicationController
  def show
    render :json => {one: 1}
  end

  def index

  end
end
