class Api::V1::UsersController < ApplicationController
  def index
    render json: UsersSerializer.new(User.all)
  end

  def create
    CSV.foreach(params[:csv].path, headers: true) do |row|
      User.create(row.to_h)
    end
    render json: {"data": { "message": "Successfully created"}}, status: 201
  end
end
