class Appointment
  attr_reader :date, :patient, :doctor 
  @@all = [] 
  
  
  def initialize(patient, doctor, date)
    @date = date 
    @patient = patient 
    @doctor = doctor 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def patients
    self.patient
  end 
  
  def doctors
    self.doctor
  end
 
  

end 