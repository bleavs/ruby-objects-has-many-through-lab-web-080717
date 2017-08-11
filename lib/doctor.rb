class Doctor

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self  #the doctor for the appointment identity
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end

  


end
