# shell_smart_pay_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellSmartPayApi
  # AccessTokenResponse Model.
  class AccessTokenResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # It is the token used for the requests that required an authenticated user.
    # This will be used for all the callback URLs.
    # @return [String]
    attr_accessor :access_token

    # validity of the access token in seconds
    # @return [String]
    attr_accessor :expires_in

    # Type of token provided
    # @return [String]
    attr_accessor :token_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['access_token'] = 'access_token'
      @_hash['expires_in'] = 'expires_in'
      @_hash['token_type'] = 'token_type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        access_token
        expires_in
        token_type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(access_token = SKIP, expires_in = SKIP,
                   token_type = 'Bearer')
      @access_token = access_token unless access_token == SKIP
      @expires_in = expires_in unless expires_in == SKIP
      @token_type = token_type unless token_type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      access_token = hash.key?('access_token') ? hash['access_token'] : SKIP
      expires_in = hash.key?('expires_in') ? hash['expires_in'] : SKIP
      token_type = hash['token_type'] ||= 'Bearer'

      # Create object from extracted values.
      AccessTokenResponse.new(access_token,
                              expires_in,
                              token_type)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} access_token: #{@access_token}, expires_in: #{@expires_in}, token_type:"\
      " #{@token_type}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} access_token: #{@access_token.inspect}, expires_in: #{@expires_in.inspect},"\
      " token_type: #{@token_type.inspect}>"
    end
  end
end
