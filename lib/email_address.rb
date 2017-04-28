class Email
  attr_accessor(:email)
  @@email = []
  define_method(:initialize) do |attributes|
    @email = attributes.fetch(:email)
  end

  def Email.all
    @@email
  end

  def save
    @@email.push(self)
  end
end
