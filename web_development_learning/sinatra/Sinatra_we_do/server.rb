require 'sinatra'

template = "Dear School Nurse:<br>FIRST_NAME will not be attending class today. He/She has come down with a case of ILLNESS and a/an ADJECTIVE fever. We have made an appointment with Dr. RANDOM_NAME, who studied for many years in PLACE, an expert in ILLNESS. He will send you all the information you need. Thank you! <br>Sincerely,<br>Mr. LAST_NAME"

get "/:first_name/:illness/:adjective/:random_name/:place/:last_name" do
  template.gsub!('FIRST_NAME',params[:first_name])
  template.gsub!('ILLNESS',params[:illness])
  template.gsub!('ADJECTIVE',params[:adjective])
  template.gsub!('RANDOM_NAME',params[:random_name])
  template.gsub!('PLACE',params[:place])
  template.gsub!('LAST_NAME',params[:last_name])
end
