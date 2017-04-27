require('rspec')
require('contact')

describe 'class Contact' do
  describe '#first_name' do
    it 'returns the first name of the contact' do
      test_contact = Contact.new({:first_name => 'Sara', :last_name => 'Schultz', :job_title => 'rockstar', :company => 'queenoftheworld'})
      expect(test_contact.first_name).to(eq('Sara'))
    end
  end
  describe '#last_name' do
    it 'returns the last name of the contact' do
      test_contact = Contact.new({:first_name => 'Sara', :last_name => 'Schultz', :job_title => 'rockstar', :company => 'queenoftheworld'})
      expect(test_contact.last_name).to(eq('Schultz'))
    end
  end
  describe '#job_title' do
    it 'returns the job title of the contact' do
      test_contact = Contact.new({:first_name => 'Sara', :last_name => 'Schultz', :job_title => 'rockstar', :company => 'queenoftheworld'})
      expect(test_contact.job_title).to(eq('rockstar'))
    end
  end
  describe '#company' do
    it 'returns the company of the contact' do
      test_contact = Contact.new({:first_name => 'Sara', :last_name => 'Schultz', :job_title => 'rockstar', :company => 'queenoftheworld'})
      expect(test_contact.company).to(eq('queenoftheworld'))
    end
  end
end
