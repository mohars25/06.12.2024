class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to @appointment, notice: 'Rendez-vous pris avec succès.'
    else
      render :new
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:doctor_id, :patient_id, :date, :city_id)
  end
end
