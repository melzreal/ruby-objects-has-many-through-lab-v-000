class Patient 
  
attr_accessor :name

@@all = []

  def initialize(name)
    @name = name 
    @@all << self
  end 
  

  def new_appointment(doctor,date)
    Appointment.new( self, doctor, date)
  end 
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self 
    end  
  end 
  
  def doctors 
    Appointment.all.map do |d|
      d.doctor 
    end 
  end
  
  
  

end 