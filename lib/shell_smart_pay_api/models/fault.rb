# shell_smart_pay_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellSmartPayApi
  # Fault Model.
  class Fault < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The description of the error.
    # @return [String]
    attr_accessor :faultstring

    # The description of the error.
    # @return [Detail]
    attr_accessor :detail

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['faultstring'] = 'faultstring'
      @_hash['detail'] = 'detail'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        faultstring
        detail
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(faultstring = SKIP, detail = SKIP)
      @faultstring = faultstring unless faultstring == SKIP
      @detail = detail unless detail == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      faultstring = hash.key?('faultstring') ? hash['faultstring'] : SKIP
      detail = Detail.from_hash(hash['detail']) if hash['detail']

      # Create object from extracted values.
      Fault.new(faultstring,
                detail)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} faultstring: #{@faultstring}, detail: #{@detail}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} faultstring: #{@faultstring.inspect}, detail: #{@detail.inspect}>"
    end
  end
end