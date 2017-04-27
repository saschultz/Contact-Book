require('rspec')
require('contact')

describe 'class Contact' do
  describe '#first_name' do
    it 'returns the first name of the contact' do
      test_contact = Contact.new({:first_name => 'Sara', :last_name => 'Schultz', :job_title => 'sad', :company => 'Saran'})
      expect(test_contact.first_name).to(eq('Sara'))
    end
  end
end
