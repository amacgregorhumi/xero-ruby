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
  class BankTransfer
    attr_accessor :from_bank_account

    attr_accessor :to_bank_account

    # amount of the transaction
    attr_accessor :amount

    # The date of the Transfer YYYY-MM-DD
    attr_accessor :date

    # The identifier of the Bank Transfer
    attr_accessor :bank_transfer_id

    # The currency rate
    attr_accessor :currency_rate

    # The Bank Transaction ID for the source account
    attr_accessor :from_bank_transaction_id

    # The Bank Transaction ID for the destination account
    attr_accessor :to_bank_transaction_id

    # Boolean to indicate if a Bank Transfer has an attachment
    attr_accessor :has_attachments

    # UTC timestamp of creation date of bank transfer
    attr_accessor :created_date_utc

    # Displays array of validation error messages from the API
    attr_accessor :validation_errors

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'from_bank_account' => :'FromBankAccount',
        :'to_bank_account' => :'ToBankAccount',
        :'amount' => :'Amount',
        :'date' => :'Date',
        :'bank_transfer_id' => :'BankTransferID',
        :'currency_rate' => :'CurrencyRate',
        :'from_bank_transaction_id' => :'FromBankTransactionID',
        :'to_bank_transaction_id' => :'ToBankTransactionID',
        :'has_attachments' => :'HasAttachments',
        :'created_date_utc' => :'CreatedDateUTC',
        :'validation_errors' => :'ValidationErrors'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'from_bank_account' => :'Account',
        :'to_bank_account' => :'Account',
        :'amount' => :'String',
        :'date' => :'Date',
        :'bank_transfer_id' => :'String',
        :'currency_rate' => :'Float',
        :'from_bank_transaction_id' => :'String',
        :'to_bank_transaction_id' => :'String',
        :'has_attachments' => :'Boolean',
        :'created_date_utc' => :'DateTime',
        :'validation_errors' => :'Array<ValidationError>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::BankTransfer` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::BankTransfer`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'from_bank_account')
        self.from_bank_account = attributes[:'from_bank_account']
      end

      if attributes.key?(:'to_bank_account')
        self.to_bank_account = attributes[:'to_bank_account']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'bank_transfer_id')
        self.bank_transfer_id = attributes[:'bank_transfer_id']
      end

      if attributes.key?(:'currency_rate')
        self.currency_rate = attributes[:'currency_rate']
      end

      if attributes.key?(:'from_bank_transaction_id')
        self.from_bank_transaction_id = attributes[:'from_bank_transaction_id']
      end

      if attributes.key?(:'to_bank_transaction_id')
        self.to_bank_transaction_id = attributes[:'to_bank_transaction_id']
      end

      if attributes.key?(:'has_attachments')
        self.has_attachments = attributes[:'has_attachments']
      else
        self.has_attachments = false
      end

      if attributes.key?(:'created_date_utc')
        self.created_date_utc = attributes[:'created_date_utc']
      end

      if attributes.key?(:'validation_errors')
        if (value = attributes[:'validation_errors']).is_a?(Array)
          self.validation_errors = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @from_bank_account.nil?
        invalid_properties.push('invalid value for "from_bank_account", from_bank_account cannot be nil.')
      end

      if @to_bank_account.nil?
        invalid_properties.push('invalid value for "to_bank_account", to_bank_account cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @from_bank_account.nil?
      return false if @to_bank_account.nil?
      return false if @amount.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          from_bank_account == o.from_bank_account &&
          to_bank_account == o.to_bank_account &&
          amount == o.amount &&
          date == o.date &&
          bank_transfer_id == o.bank_transfer_id &&
          currency_rate == o.currency_rate &&
          from_bank_transaction_id == o.from_bank_transaction_id &&
          to_bank_transaction_id == o.to_bank_transaction_id &&
          has_attachments == o.has_attachments &&
          created_date_utc == o.created_date_utc &&
          validation_errors == o.validation_errors
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [from_bank_account, to_bank_account, amount, date, bank_transfer_id, currency_rate, from_bank_transaction_id, to_bank_transaction_id, has_attachments, created_date_utc, validation_errors].hash
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
