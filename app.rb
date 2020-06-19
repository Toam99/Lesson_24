#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	   erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School !!!</a>"			
end

get '/about' do
    @error = 'something wrong!'      
    erb :about
end

get '/visit' do
    erb :visit
end

get '/contacts' do
    erb :contacts
end

post '/visit' do

    @username = params[:username]
    @phone = params[:phone]
    @datetime = params[:datetime]
    @barber = params[:barber]
    @color = params[:color]

   # hash for validation
hh = {    :user_name => 'Enter your name',
          :phone => 'Enter your phone number',
          :date_time => 'Enter date and time' }

# for each pair is value
hh.each do |key, value|
  # if params empty
  if params[key] == ''
    # params @error to assign value from hassh hh
    @error = hh[key]

    # return performance
    return erb :visit
  end
end

    erb "OK, username is #{@username}, #{@phone}, #{@datetime}, #{@barber}, #{@color}"

end
