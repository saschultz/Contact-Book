require('rspec')
require('mailing_address')

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
end
