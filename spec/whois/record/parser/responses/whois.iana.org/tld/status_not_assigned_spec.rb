# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.iana.org/tld/status_not_assigned.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.iana.org.rb'

describe Whois::Record::Parser::WhoisIanaOrg, "status_not_assigned.expected" do

  before(:each) do
    file = fixture("responses", "whois.iana.org/tld/status_not_assigned.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#status" do
    it do
      @parser.status.should == :available
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == true
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == false
    end
  end
  describe "#created_on" do
    it do
      @parser.created_on.should == nil
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("1999-09-27")
    end
  end
  describe "#expires_on" do
    it do
      lambda { @parser.expires_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should == []
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should == []
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should == []
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should == []
    end
  end
end