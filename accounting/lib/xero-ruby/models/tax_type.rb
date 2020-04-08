=begin
#Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0.8
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'time'
require 'date'

module XeroRuby
  class TaxType
    OUTPUT = "OUTPUT".freeze
    INPUT = "INPUT".freeze
    CAPEXINPUT = "CAPEXINPUT".freeze
    EXEMPTEXPORT = "EXEMPTEXPORT".freeze
    EXEMPTEXPENSES = "EXEMPTEXPENSES".freeze
    EXEMPTCAPITAL = "EXEMPTCAPITAL".freeze
    EXEMPTOUTPUT = "EXEMPTOUTPUT".freeze
    INPUTTAXED = "INPUTTAXED".freeze
    BASEXCLUDED = "BASEXCLUDED".freeze
    GSTONCAPIMPORTS = "GSTONCAPIMPORTS".freeze
    GSTONIMPORTS = "GSTONIMPORTS".freeze
    NONE = "NONE".freeze
    INPUT2 = "INPUT2".freeze
    ZERORATED = "ZERORATED".freeze
    OUTPUT2 = "OUTPUT2".freeze
    CAPEXINPUT2 = "CAPEXINPUT2".freeze
    CAPEXOUTPUT = "CAPEXOUTPUT".freeze
    CAPEXOUTPUT2 = "CAPEXOUTPUT2".freeze
    CAPEXSRINPUT = "CAPEXSRINPUT".freeze
    CAPEXSROUTPUT = "CAPEXSROUTPUT".freeze
    ECACQUISITIONS = "ECACQUISITIONS".freeze
    ECZRINPUT = "ECZRINPUT".freeze
    ECZROUTPUT = "ECZROUTPUT".freeze
    ECZROUTPUTSERVICES = "ECZROUTPUTSERVICES".freeze
    EXEMPTINPUT = "EXEMPTINPUT".freeze
    REVERSECHARGES = "REVERSECHARGES".freeze
    RRINPUT = "RRINPUT".freeze
    RROUTPUT = "RROUTPUT".freeze
    SRINPUT = "SRINPUT".freeze
    SROUTPUT = "SROUTPUT".freeze
    ZERORATEDINPUT = "ZERORATEDINPUT".freeze
    ZERORATEDOUTPUT = "ZERORATEDOUTPUT".freeze
    BLINPUT = "BLINPUT".freeze
    DSOUTPUT = "DSOUTPUT".freeze
    EPINPUT = "EPINPUT".freeze
    ES33_OUTPUT = "ES33OUTPUT".freeze
    ESN33_OUTPUT = "ESN33OUTPUT".freeze
    IGDSINPUT2 = "IGDSINPUT2".freeze
    IMINPUT2 = "IMINPUT2".freeze
    MEINPUT = "MEINPUT".freeze
    NRINPUT = "NRINPUT".freeze
    OPINPUT = "OPINPUT".freeze
    OSOUTPUT = "OSOUTPUT".freeze
    TXESSINPUT = "TXESSINPUT".freeze
    TXN33_INPUT = "TXN33INPUT".freeze
    TXPETINPUT = "TXPETINPUT".freeze
    TXREINPUT = "TXREINPUT".freeze
    INPUT3 = "INPUT3".freeze
    INPUT4 = "INPUT4".freeze
    OUTPUT3 = "OUTPUT3".freeze
    OUTPUT4 = "OUTPUT4".freeze
    SROUTPUT2 = "SROUTPUT2".freeze
    TXCA = "TXCA".freeze
    SRCAS = "SRCAS".freeze
    BLINPUT2 = "BLINPUT2".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = TaxType.constants.select { |c| TaxType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #TaxType" if constantValues.empty?
      value
    end
  end
end
