require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'haml'
require 'pony'
require 'sqlite3'

def get_db
	return SQLite3::Database.new 'base.db'
  end
  
  configure do
	db = get_db
	db.execute 'CREATE TABLE IF NOT EXISTS "Messages"
	  (
		"id" INTEGER PRIMARY KEY AUTOINCREMENT,
		"username" TEXT,
		"phone" TEXT,
		"email" TEXT,
		"option" TEXT,
	  )'
	db.close
  end
  def save_form_data_to_database
	db = get_db
	db.execute 'INSERT INTO Messages (username, phone, datetime1, barber)
	VALUES (?, ?, ?, ?)', [@username, @phone, @datetime, @barber]
	db.close
  end
  
post '/visit' do
	@username = params[:username]
	@phone = params[:phone]
	@datetime = params[:datetime]	
	@barber	= 	params[:barber]
	save_form_data_to_database
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

post '/contacts' do
	@name = params[:name]
	@mail = params[:mail]
	@body = params[:body]

		contacts = File.open("./public/contacts.txt","a")
		contacts.write "Email_adress: #{@mail}, Message #{@body} name #{@name}.\n"
		contacts.close
	haml :contacts
end	

