class StatusController < ApplicationController
  def index
    @requests    = SupportRequest.where(:resolved => false)
    @patients    = Patient.where("patients.created_at::Date = ?", Date.today).count
    @server_time = Time.now
  end
end
