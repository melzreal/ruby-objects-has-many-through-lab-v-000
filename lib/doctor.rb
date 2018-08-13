class Doctor 
  attr_accessor :name, :patient
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end 
  
  def appointments
    Appointment.all.select do |as|
      as.doctor == self 
    end 
  end 

   def patients 
    appointments.map do |p|
      p.patient 
    end 
  end
     
  
    
  
end 