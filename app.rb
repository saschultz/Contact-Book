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
