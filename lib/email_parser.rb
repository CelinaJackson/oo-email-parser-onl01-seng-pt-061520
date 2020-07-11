class EmailAddressParser

  attr_accessor :email_addresses

  def self.new_from_csv(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
  puts email_addresses.split.collect {|address| address.split(',')}
  returnArr = splitEmail_addresses.flatten.uniq
  returnArr
end
end

email_addresses = "asd@qw.com, per@er.org, Zaza@sugar.net"
parser = EmailAddressParser.new(email_addresses)
parser.parse

emails2 = "asd@qw.com per@er.org per@er.org Zaza@sugar.net"
parser2 = EmailParser.new(emails2)
parser2.parse
