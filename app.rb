#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/About' do 
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
	@barber	= 	params[:barber]
	
visit = File.open("./public/users.txt","a")
visit.write "User: #{@username}, phone: #{@phone}, date and time: #{@datetime}
Barber man:#{@barber}.\n"
visit.close

erb :visit  
end

post '/contacts' do
	@emailadress = params[:emailadress]
	@message     = params[:message]

contacts = File.open("./public/contacts.txt","a")
contacts.write "Email_adress: #{@emailadress}, Message #{@message}.\n"
contacts.close
erb :contacts
end	