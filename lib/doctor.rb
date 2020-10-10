class Doctor
  attr_accessor :name, :date, :patient
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end

  def patients
    Appointment.all.map do |x|
      if x.doctor == self
        x.patient
      end
    end
  end

  
end