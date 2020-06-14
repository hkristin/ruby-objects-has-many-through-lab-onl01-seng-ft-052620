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
    new_appointment = Appointment.new(date,doctor,self)
    new_appointment.patient
  end
  
  def appointments
  end

  def doctors
  
  end
end