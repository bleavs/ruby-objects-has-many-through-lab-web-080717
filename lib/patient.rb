class Patient

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def doctors
    @appointments.collect do |appointment|
    appointment.doctor
  end
end

  def add_appointment(appointment)
   @appointments << appointment
   appointment.patient = self
  end
end
