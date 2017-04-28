require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('./lib/email_address')
require('./lib/mailing_address')
require('./lib/phone_number')

get('/') do
  @contactship = Contact.all
  erb(:index)
end

get '/contact_form' do
  erb(:contact_form)
end

post '/contact_form' do
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  job_title = params.fetch('job_title')
  company = params.fetch('company')
  @contact = Contact.new({:first_name => first_name, :last_name => last_name, :job_title => job_title, :company => company})
  @contact.save
  @contactship = Contact.all
  redirect '/'
  erb(:index)
end

get '/contact' do
  @mail = Mailing.all
  @email = Email.all
  @phone = Phone.all
  erb :contact_info
end

get '/mailing_form' do
  erb :contact_info
end

post '/mailing_form' do
  street = params.fetch('street')
  city = params.fetch('city')
  state = params.fetch('state')
  zip = params.fetch('zip')
  @mail = Mailing.new({:street => street, :city => city, :state => state, :zip => zip})
  @mail.save
  redirect '/contact'
  erb :contact_info
end

get '/email_form' do
  erb :contact_info
end

post '/email_form' do
  email = params.fetch('email')
  @email = Email.new({:email => email})
  @email.save
  redirect '/contact'
  erb :contact_info
end

get '/phone_form' do
  erb :contact_info
end

post '/phone_form' do
  phone = params.fetch('phone')
  @phone = Phone.new({:phone => phone})
  @phone.save
  redirect '/contact'
  erb :contact_info
end
