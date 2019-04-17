require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'haml'
require 'pony'

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
	haml :contacts
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

hh = { :username => 'Введите имя',
	   :phone => 'Введите телефон',
	   :datetime => 'Введи корректно дату и время'
	}

	hh.each do |key , value|
		if params[key] == ''
			@error = hh[key]
			return erb :visit
		end
	end
	if @error != ''
    	return erb :visit
  	end

erb :visit  
end

post '/contacts' do
	@name = params[:name]
	@mail = params[:mail]
	@body = params[:body]
	
	#Pony.mail({
	#	:to => '19mur@mail.ru',
		#:via => :smtp,
	#	:via_options => {
	#	  :address        => 'smtp.yandex.ru',
	#	  :port           => '465',
	#	  :user_name      => '',
	#	  :password       => '',
	#	  :authentication => :login, # :plain, :login, :cram_md5, no auth by default
	#	  :domain         => "localhost.localdomain" # the HELO domain provided by the client to the server
	#	}
	#  })
	  


		contacts = File.open("./public/contacts.txt","a")
		contacts.write "Email_adress: #{@mail}, Message #{@body} name #{@name}.\n"
		contacts.close
	haml :contacts
end	
