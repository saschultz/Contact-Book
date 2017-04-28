class Phone
  attr_accessor(:phone)
  @@phone = []
  define_method(:initialize) do |attributes|
    @phone = attributes.fetch(:phone)
  end

  def Phone.all
    @@phone
  end

  def save
    @@phone.push(self)
  end
end
