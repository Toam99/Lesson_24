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

    if @username == ''
        @error = 'Enter your name'
        return erb :visit                
    end

    if @phone == ''
        @error = 'Enter your phone number'
        return erb :visit                
    end

    if @datetime == ''
        @error = 'Wrong date and time'                       
    end


    erb "OK, username is #{@username}, #{@phone}, #{@datetime}, #{@barber}, #{@color}"

end

# 1 change "My Website" into "barbe Shop"
# 2 add pages --> /about, /visit, /contacts,
# 3 switch "erb" to call-get info from relevant file
# 4 <script src="/vendor/jquery-3.5.1.min.js"></script>  latest verion by 16.06.2020
# 5
# 6 