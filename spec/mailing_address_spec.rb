require('rspec')
require('mailing_address')
require('email_address')
require('phone_number')

describe 'class Mailing' do
  describe '#street' do
    it 'returns the street of the mailing address' do
      test_mail = Mailing.new({:street => 'Belmont', :city => 'Portland', :state => 'OR', :zip => '97214'})
      expect(test_mail.street).to(eq('Belmont'))
    end
  end
  describe '#city' do
    it 'returns the city of the mailing address' do
      test_mail = Mailing.new({:street => 'Belmont', :city => 'Portland', :state => 'OR', :zip => '97214'})
      expect(test_mail.city).to(eq('Portland'))
    end
  end
  describe '#state' do
    it 'returns the state of the mailing address' do
      test_mail = Mailing.new({:street => 'Belmont', :city => 'Portland', :state => 'OR', :zip => '97214'})
      expect(test_mail.state).to(eq('OR'))
    end
  end
  describe '#zip' do
    it 'returns the zip of the mailing address' do
      test_mail = Mailing.new({:street => 'Belmont', :city => 'Portland', :state => 'OR', :zip => '97214'})
      expect(test_mail.zip).to(eq('97214'))
    end
  end
  describe '#email' do
    it 'returns the email address' do
      test_email = Email.new({:email => 'pandabear@gmail.com'})
      expect(test_email.email).to(eq('pandabear@gmail.com'))
    end
  end
  describe '#phone' do
    it 'returns the phone address' do
      test_phone = Phone.new({:phone => '4110006868'})
      expect(test_phone.phone).to(eq('4110006868'))
    end
  end
end
