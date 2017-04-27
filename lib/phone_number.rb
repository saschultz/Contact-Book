class Phone
  attr_accessor(:phone)

  define_method(:initialize) do |attributes|
    @phone = attributes.fetch(:phone)

  end
end
