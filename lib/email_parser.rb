class EmailAddressParser

  attr_accessor :name, :csv_emails

  def self.new_from_csv(csv_emails)
    @csv_emails = csv_emails
  end

  def parse
    csv_emails.split.collect do |address|
      address.split(',')
  end
  .flatten.uniq
end
