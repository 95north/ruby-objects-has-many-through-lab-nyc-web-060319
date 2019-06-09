require 'pry'
require_relative './patient.rb'
require_relative './appointment.rb'


class Appointment

	attr_accessor :date, :patient, :doctor

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





end
