# shell_smart_pay_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellSmartPayApi
  # MppAccesTokenResponse Model.
  class MppAccesTokenResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # It is the token used in the requests that required to authenticate an
    # user.
    # @return [String]
    attr_accessor :access_token

    # type of token provided
    # @return [String]
    attr_accessor :token_type

    # validity of the access token in seconds
    # @return [Integer]
    attr_accessor :expires_in

    # scope for the authentication protocol
    # @return [String]
    attr_accessor :scope

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['access_token'] = 'access_token'
      @_hash['token_type'] = 'token_type'
      @_hash['expires_in'] = 'expires_in'
      @_hash['scope'] = 'scope'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        access_token
        token_type
        expires_in
        scope
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(access_token = SKIP, token_type = 'bearer',
                   expires_in = SKIP, scope = 'basic openid')
      @access_token = access_token unless access_token == SKIP
      @token_type = token_type unless token_type == SKIP
      @expires_in = expires_in unless expires_in == SKIP
      @scope = scope unless scope == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      access_token = hash.key?('access_token') ? hash['access_token'] : SKIP
      token_type = hash['token_type'] ||= 'bearer'
      expires_in = hash.key?('expires_in') ? hash['expires_in'] : SKIP
      scope = hash['scope'] ||= 'basic openid'

      # Create object from extracted values.
      MppAccesTokenResponse.new(access_token,
                                token_type,
                                expires_in,
                                scope)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} access_token: #{@access_token}, token_type: #{@token_type}, expires_in:"\
      " #{@expires_in}, scope: #{@scope}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} access_token: #{@access_token.inspect}, token_type: #{@token_type.inspect},"\
      " expires_in: #{@expires_in.inspect}, scope: #{@scope.inspect}>"
    end
  end
end