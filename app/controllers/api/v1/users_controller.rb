class Api::V1::UsersController < ApplicationController
  def index
    render json: UsersSerializer.new(User.all)
  end
end
