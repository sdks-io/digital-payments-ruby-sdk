# shell_smart_pay_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellSmartPayApi
  # Object containing address details/elements
  class Loc < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The station’s full street address, including building number
    # @return [String]
    attr_accessor :street

    # The station’s postcode
    # @return [String]
    attr_accessor :pc

    # The city the station is located within
    # @return [String]
    attr_accessor :city

    # The region the station is located within
    # @return [String]
    attr_accessor :region

    # The name of the country (in English) the station is located within
    # @return [String]
    attr_accessor :country

    # The two-letter ISO 3166 country code of the country the station is located
    # within
    # @return [String]
    attr_accessor :ccode

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['street'] = 'street'
      @_hash['pc'] = 'pc'
      @_hash['city'] = 'city'
      @_hash['region'] = 'region'
      @_hash['country'] = 'country'
      @_hash['ccode'] = 'ccode'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        street
        pc
        city
        region
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(country = nil, ccode = nil, street = SKIP, pc = SKIP,
                   city = SKIP, region = SKIP)
      @street = street unless street == SKIP
      @pc = pc unless pc == SKIP
      @city = city unless city == SKIP
      @region = region unless region == SKIP
      @country = country
      @ccode = ccode
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      country = hash.key?('country') ? hash['country'] : nil
      ccode = hash.key?('ccode') ? hash['ccode'] : nil
      street = hash.key?('street') ? hash['street'] : SKIP
      pc = hash.key?('pc') ? hash['pc'] : SKIP
      city = hash.key?('city') ? hash['city'] : SKIP
      region = hash.key?('region') ? hash['region'] : SKIP

      # Create object from extracted values.
      Loc.new(country,
              ccode,
              street,
              pc,
              city,
              region)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} street: #{@street}, pc: #{@pc}, city: #{@city}, region: #{@region},"\
      " country: #{@country}, ccode: #{@ccode}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} street: #{@street.inspect}, pc: #{@pc.inspect}, city: #{@city.inspect},"\
      " region: #{@region.inspect}, country: #{@country.inspect}, ccode: #{@ccode.inspect}>"
    end
  end
end
