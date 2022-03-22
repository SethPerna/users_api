class Api::V1::UsersController < ApplicationController
  def index
    render json: UsersSerializer.new(User.all)
  end

  def create
    if params[:csv].present?
      CSV.foreach(params[:csv].path, headers: true) do |row|
        user = User.create(row.to_h)
        if !user.save
          return invalid_attributes
        end
      end
    end
    render json: {"data": { "message": "Successfully created"}}, status: 201
  end

  private

  def invalid_attributes
    render json: {"data": { "message": "Invalid Attributes"}}
  end
end
