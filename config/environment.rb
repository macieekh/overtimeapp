# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Overtimeapp::Application.initialize!

Time::DATE_FORMATS[:overtime_date] = "%d.%m.%y"