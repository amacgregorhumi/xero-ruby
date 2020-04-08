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
  class BatchPayment
    attr_accessor :account

    # (NZ Only) Optional references for the batch payment transaction. It will also show with the batch payment transaction in the bank reconciliation Find & Match screen. Depending on your individual bank, the detail may also show on the bank statement you import into Xero.
    attr_accessor :reference

    # (NZ Only) Optional references for the batch payment transaction. It will also show with the batch payment transaction in the bank reconciliation Find & Match screen. Depending on your individual bank, the detail may also show on the bank statement you import into Xero.
    attr_accessor :particulars

    # (NZ Only) Optional references for the batch payment transaction. It will also show with the batch payment transaction in the bank reconciliation Find & Match screen. Depending on your individual bank, the detail may also show on the bank statement you import into Xero.
    attr_accessor :code

    # (Non-NZ Only) These details are sent to the org’s bank as a reference for the batch payment transaction. They will also show with the batch payment transaction in the bank reconciliation Find & Match screen. Depending on your individual bank, the detail may also show on the bank statement imported into Xero. Maximum field length = 18
    attr_accessor :details

    # (UK Only) Only shows on the statement line in Xero. Max length =18
    attr_accessor :narrative

    # The Xero generated unique identifier for the bank transaction (read-only)
    attr_accessor :batch_payment_id

    # Date the payment is being made (YYYY-MM-DD) e.g. 2009-09-06
    attr_accessor :date_string

    # Date the payment is being made (YYYY-MM-DD) e.g. 2009-09-06
    attr_accessor :date

    # The amount of the payment. Must be less than or equal to the outstanding amount owing on the invoice e.g. 200.00
    attr_accessor :amount

    attr_accessor :payments

    # PAYBATCH for bill payments or RECBATCH for sales invoice payments (read-only)
    attr_accessor :type

    # AUTHORISED or DELETED (read-only). New batch payments will have a status of AUTHORISED. It is not possible to delete batch payments via the API.
    attr_accessor :status

    # The total of the payments that make up the batch (read-only)
    attr_accessor :total_amount

    # UTC timestamp of last update to the payment
    attr_accessor :updated_date_utc

    # Booelan that tells you if the batch payment has been reconciled (read-only)
    attr_accessor :is_reconciled

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account' => :'Account',
        :'reference' => :'Reference',
        :'particulars' => :'Particulars',
        :'code' => :'Code',
        :'details' => :'Details',
        :'narrative' => :'Narrative',
        :'batch_payment_id' => :'BatchPaymentID',
        :'date_string' => :'DateString',
        :'date' => :'Date',
        :'amount' => :'Amount',
        :'payments' => :'Payments',
        :'type' => :'Type',
        :'status' => :'Status',
        :'total_amount' => :'TotalAmount',
        :'updated_date_utc' => :'UpdatedDateUTC',
        :'is_reconciled' => :'IsReconciled'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account' => :'Account',
        :'reference' => :'String',
        :'particulars' => :'String',
        :'code' => :'String',
        :'details' => :'String',
        :'narrative' => :'String',
        :'batch_payment_id' => :'String',
        :'date_string' => :'String',
        :'date' => :'Date',
        :'amount' => :'Float',
        :'payments' => :'Array<Payment>',
        :'type' => :'String',
        :'status' => :'String',
        :'total_amount' => :'String',
        :'updated_date_utc' => :'DateTime',
        :'is_reconciled' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::BatchPayment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::BatchPayment`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'particulars')
        self.particulars = attributes[:'particulars']
      end

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'details')
        self.details = attributes[:'details']
      end

      if attributes.key?(:'narrative')
        self.narrative = attributes[:'narrative']
      end

      if attributes.key?(:'batch_payment_id')
        self.batch_payment_id = attributes[:'batch_payment_id']
      end

      if attributes.key?(:'date_string')
        self.date_string = attributes[:'date_string']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'payments')
        if (value = attributes[:'payments']).is_a?(Array)
          self.payments = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'total_amount')
        self.total_amount = attributes[:'total_amount']
      end

      if attributes.key?(:'updated_date_utc')
        self.updated_date_utc = attributes[:'updated_date_utc']
      end

      if attributes.key?(:'is_reconciled')
        self.is_reconciled = attributes[:'is_reconciled']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@reference.nil? && @reference.to_s.length > 12
        invalid_properties.push('invalid value for "reference", the character length must be smaller than or equal to 12.')
      end

      if !@particulars.nil? && @particulars.to_s.length > 12
        invalid_properties.push('invalid value for "particulars", the character length must be smaller than or equal to 12.')
      end

      if !@code.nil? && @code.to_s.length > 12
        invalid_properties.push('invalid value for "code", the character length must be smaller than or equal to 12.')
      end

      if !@details.nil? && @details.to_s.length > 18
        invalid_properties.push('invalid value for "details", the character length must be smaller than or equal to 18.')
      end

      if !@narrative.nil? && @narrative.to_s.length > 18
        invalid_properties.push('invalid value for "narrative", the character length must be smaller than or equal to 18.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@reference.nil? && @reference.to_s.length > 12
      return false if !@particulars.nil? && @particulars.to_s.length > 12
      return false if !@code.nil? && @code.to_s.length > 12
      return false if !@details.nil? && @details.to_s.length > 18
      return false if !@narrative.nil? && @narrative.to_s.length > 18
      type_validator = EnumAttributeValidator.new('String', ["PAYBATCH", "RECBATCH"])
      return false unless type_validator.valid?(@type)
      status_validator = EnumAttributeValidator.new('String', ["AUTHORISED", "DELETED"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] reference Value to be assigned
    def reference=(reference)
      if !reference.nil? && reference.to_s.length > 12
        fail ArgumentError, 'invalid value for "reference", the character length must be smaller than or equal to 12.'
      end

      @reference = reference
    end

    # Custom attribute writer method with validation
    # @param [Object] particulars Value to be assigned
    def particulars=(particulars)
      if !particulars.nil? && particulars.to_s.length > 12
        fail ArgumentError, 'invalid value for "particulars", the character length must be smaller than or equal to 12.'
      end

      @particulars = particulars
    end

    # Custom attribute writer method with validation
    # @param [Object] code Value to be assigned
    def code=(code)
      if !code.nil? && code.to_s.length > 12
        fail ArgumentError, 'invalid value for "code", the character length must be smaller than or equal to 12.'
      end

      @code = code
    end

    # Custom attribute writer method with validation
    # @param [Object] details Value to be assigned
    def details=(details)
      if !details.nil? && details.to_s.length > 18
        fail ArgumentError, 'invalid value for "details", the character length must be smaller than or equal to 18.'
      end

      @details = details
    end

    # Custom attribute writer method with validation
    # @param [Object] narrative Value to be assigned
    def narrative=(narrative)
      if !narrative.nil? && narrative.to_s.length > 18
        fail ArgumentError, 'invalid value for "narrative", the character length must be smaller than or equal to 18.'
      end

      @narrative = narrative
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["PAYBATCH", "RECBATCH"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["AUTHORISED", "DELETED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account == o.account &&
          reference == o.reference &&
          particulars == o.particulars &&
          code == o.code &&
          details == o.details &&
          narrative == o.narrative &&
          batch_payment_id == o.batch_payment_id &&
          date_string == o.date_string &&
          date == o.date &&
          amount == o.amount &&
          payments == o.payments &&
          type == o.type &&
          status == o.status &&
          total_amount == o.total_amount &&
          updated_date_utc == o.updated_date_utc &&
          is_reconciled == o.is_reconciled
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account, reference, particulars, code, details, narrative, batch_payment_id, date_string, date, amount, payments, type, status, total_amount, updated_date_utc, is_reconciled].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        XeroRuby.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

    # customized data_parser
    def parse_date(datestring)
      seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
      return Time.at(seconds_since_epoch).to_s
    end
  end
end
