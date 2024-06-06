# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # OauthTokenPostRequestBody Model.
  class OauthTokenPostRequestBody < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # In OAuth 2.0, the term grant typee refers to the way an application gets
    # an access token. OAuth 2.0 defines several grant types, including the
    # authorization code flow.
    # @return [String]
    attr_accessor :grant_type

    # After registering your app, you will receive a client ID and a client
    # secret. The client ID is considered public information, and is used to
    # build login URLs, or included in Javascript source code on a page.
    # @return [String]
    attr_accessor :client_id

    # After registering your app, you will receive a client ID and a client
    # secret. The client ID is considered public information, and is used to
    # build login URLs, or included in Javascript source code on a page. The
    # client secret must be kept confidential.
    # @return [String]
    attr_accessor :client_secret

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['grant_type'] = 'grant_type'
      @_hash['client_id'] = 'client_id'
      @_hash['client_secret'] = 'client_secret'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(grant_type = 'client_credentials',
                   client_id = 'SOFflRakNlwnWlxfOXQ4GHDVyqGawuKA',
                   client_secret = 'cRnWgw7gACqM3gVS')
      @grant_type = grant_type
      @client_id = client_id
      @client_secret = client_secret
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      grant_type = hash['grant_type'] ||= 'client_credentials'
      client_id = hash['client_id'] ||= 'SOFflRakNlwnWlxfOXQ4GHDVyqGawuKA'
      client_secret = hash['client_secret'] ||= 'cRnWgw7gACqM3gVS'

      # Create object from extracted values.
      OauthTokenPostRequestBody.new(grant_type,
                                    client_id,
                                    client_secret)
    end
  end
end
