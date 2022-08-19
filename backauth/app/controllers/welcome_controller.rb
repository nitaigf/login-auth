class WelcomeController < ApplicationController
  def index
    render json: { message: "Welcome to the API BackAuth" }
  end
end
