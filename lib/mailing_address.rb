class Mailing
  attr_accessor(:street, :city, :state, :zip)
  @@mail = []
  def initialize(attributes)
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
  end

  def Mailing.all
    @@mail
  end

  def save
    @@mail.push(self)
  end
end
