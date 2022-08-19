class WelcomeController < ApplicationController
  def index
    render json: { message: "Welcome to the API BackLogin" }
  end
end
