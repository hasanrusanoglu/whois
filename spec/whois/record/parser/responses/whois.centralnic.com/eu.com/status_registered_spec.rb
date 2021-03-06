# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.centralnic.com/eu.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.centralnic.com.rb'

describe Whois::Record::Parser::WhoisCentralnicCom, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.centralnic.com/eu.com/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("This whois service is provided by CentralNic Ltd and only contains information pertaining to Internet domain names we have registered for our customers. By using this service you are agreeing (1) not to use any information presented here for any purpose other than determining ownership of domain names, (2) not to store or reproduce this data in any way, (3) not to use any high-volume, automated, electronic processes to obtain data from this service. Abuse of this service is monitored and actions in contravention of these terms will result in being permanently blacklisted. All data is (c) CentralNic Ltd https://www.centralnic.com/")
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq("walkabout.eu.com")
    end
  end
  describe "#domain_id" do
    it do
      expect(subject.domain_id).to eq("CNIC-DO85080")
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(["OK"])
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(true)
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to be_a(Time)
      expect(subject.created_on).to eq(Time.parse("2001-08-14 10:14:41 UTC"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2012-01-16 16:26:29 UTC"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2013-08-14 23:59:59 UTC"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Record::Registrar)
      expect(subject.registrar.id).to eq("H126914")
      expect(subject.registrar.name).to eq(nil)
      expect(subject.registrar.organization).to eq("iTransact Ltd")
      expect(subject.registrar.url).to eq("www.itransact.ltd.uk")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts).to have(1).items
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("H1045382")
      expect(subject.registrant_contacts[0].name).to eq("Regent Inns Plc")
      expect(subject.registrant_contacts[0].organization).to eq(nil)
      expect(subject.registrant_contacts[0].address).to eq("77 Muswell Hill\nLondon")
      expect(subject.registrant_contacts[0].city).to eq(nil)
      expect(subject.registrant_contacts[0].zip).to eq("N10 3PJ")
      expect(subject.registrant_contacts[0].state).to eq(nil)
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("GB")
      expect(subject.registrant_contacts[0].phone).to eq("+44.2083753155")
      expect(subject.registrant_contacts[0].fax).to eq("+44.2083753001")
      expect(subject.registrant_contacts[0].email).to eq("john.boyle@regent-inns.plc.uk")
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts).to have(1).items
      expect(subject.admin_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Record::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("H64717")
      expect(subject.admin_contacts[0].name).to eq("John Boyle")
      expect(subject.admin_contacts[0].organization).to eq("Regent Inns Plc")
      expect(subject.admin_contacts[0].address).to eq("77 Muswell Hill\nLondon")
      expect(subject.admin_contacts[0].city).to eq(nil)
      expect(subject.admin_contacts[0].zip).to eq("N10 3PJ")
      expect(subject.admin_contacts[0].state).to eq(nil)
      expect(subject.admin_contacts[0].country).to eq(nil)
      expect(subject.admin_contacts[0].country_code).to eq("GB")
      expect(subject.admin_contacts[0].phone).to eq("+44.2083753155")
      expect(subject.admin_contacts[0].fax).to eq("+44.2083753001")
      expect(subject.admin_contacts[0].email).to eq("john.boyle@regent-inns.plc.uk")
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts).to have(1).items
      expect(subject.technical_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Record::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("H126914")
      expect(subject.technical_contacts[0].name).to eq("Constantine Pagonis")
      expect(subject.technical_contacts[0].organization).to eq("iTransact Ltd")
      expect(subject.technical_contacts[0].address).to eq("PO Box 430\nCambridge\nCambs")
      expect(subject.technical_contacts[0].city).to eq(nil)
      expect(subject.technical_contacts[0].zip).to eq("CB1 2WE")
      expect(subject.technical_contacts[0].state).to eq(nil)
      expect(subject.technical_contacts[0].country).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("GB")
      expect(subject.technical_contacts[0].phone).to eq("+44.1223700322")
      expect(subject.technical_contacts[0].fax).to eq(nil)
      expect(subject.technical_contacts[0].email).to eq("constantine@itransact.ltd.uk")
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers).to have(2).items
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.itransactuk.net")
      expect(subject.nameservers[1]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.itransactuk.net")
    end
  end
end
