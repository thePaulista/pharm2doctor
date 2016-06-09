class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.find_by(params[:physician_first_name], params[:physician_last_name])
  end
end
