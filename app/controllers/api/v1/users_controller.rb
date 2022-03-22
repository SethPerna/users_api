class Api::V1::UsersController < ApplicationController
  def index
    render json: UsersSerializer.new(User.all)
  end

  def create
    CSV.foreach(params[:fisier].path, headers: true) do |row|
      user = User.create(row.to_h)
    end
    redirect_to :action => 'index'
  end
end
