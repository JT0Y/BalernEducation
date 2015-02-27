class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_filter :verify_is_admin, except: [:index]
  respond_to :html

  def index
    @appointments = Appointment.order(starts_at: :desc)
    @appointments = Appointment.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    respond_with(@appointment)
  end

  def new
    @appointment = Appointment.new
    respond_with(@appointment)
  end

  def edit
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.save
    respond_with(@appointment)
  end

  def update
    @appointment.update(appointment_params)
    respond_with(@appointment)
  end

  def destroy
    @appointment.destroy
    respond_with(@appointment)
  end

  private
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    def appointment_params
      params.require(:appointment).permit(:starts_at, :teacher_id, :group_id, :ta, :note)
    end
end
