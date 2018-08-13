class Patient 
attr_accessor :name
@@all = []

  def initialize(name)
    @name = name 
  end 
  
  def self.all
    @@all 
  end
  
  def new_appointment(doctor,date)
    Appointment.new(date, self, doctor)
  end 
  
  def appointments
    Appointment.all.select do |check|
      check.patient == self 
    end  
  end 
  
  def doctors 
    appointments.map do |docs|
      docs.doctor 
    end 
  end
  
  
  

end 