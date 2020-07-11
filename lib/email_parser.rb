class EmailAddressParser

  attr_accessor :emails

  def self.new_from_csv(emails)
    @emails = emails
  end

  def parse
    csv_emails.split.collect do |address|
      address.split(',')
  end
  .flatten.uniq
end
end
