class Patient
  attr_accessor :name
  
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date,doctor)
    new_app = Appointment.new(date, self, doctor)
    new_app
  end
  
  def appointments
    Appointment.all.select do |appointment| 
      appointment.patient == self
    end
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end
end