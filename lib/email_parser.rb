# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser

  attr_accessor :emails

  def initialize(email_addresses)
    @emails = email_addresses
  end
  
  def parse
    parsed = @emails.split(' ') || emails.split(',') # create array of words split either by space of comma 
    parsed = parsed.each_with_object([]) do |email, arr| # iterate over parsed, 
      email = email[0...email.length - 1] if email.include?(',') # remove commas, and
      arr << email if !arr.include?(email) # add email to new array if email not present in array
    end
  end

end
