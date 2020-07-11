class EmailAddressParser

  attr_accessor :email_addresses

  def self.new_from_csv(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
  puts email_addresses.split.collect {|address| address.split(',')}
  end
  .flatten.uniq

end
end

email_addresses = "john@doe.com, person@somewhere.com"
parser = EmailAddressParser.new(email_addresses)
parser.parse
