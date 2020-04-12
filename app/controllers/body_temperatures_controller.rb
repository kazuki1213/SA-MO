class BodyTemperaturesController < ApplicationController
  def index
    @user = User.find(current_user.id)
  end

  def new
    @body_temperature = BodyTemperature.new
  end

  def create
    user = User.find(params[:user_id])
    bt = params[:body_temperature][:body_temperature]
    comment = params[:body_temperature][:comment]
    @body_temperature = user.body_temperatures.new(body_temperature: bt, comment: comment)
    if @body_temperature.save
      render 'index'
    else
      render 'new'
    end
  end
end
