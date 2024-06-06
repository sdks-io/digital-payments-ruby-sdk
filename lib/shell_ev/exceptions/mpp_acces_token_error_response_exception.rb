# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # MppAccesTokenErrorResponse class.
  class MppAccesTokenErrorResponseException < APIException
    SKIP = Object.new
    private_constant :SKIP

    # error code or short description
    # @return [String]
    attr_accessor :error

    # error code or short description due to invalid request or invalid client
    # ID
    # @return [String]
    attr_accessor :error_code

    # Description of the error
    # @return [String]
    attr_accessor :error_description

    # The constructor.
    # @param [String] The reason for raising an exception.
    # @param [HttpResponse] The HttpReponse of the API call.
    def initialize(reason, response)
      super(reason, response)
      hash = APIHelper.json_deserialize(@response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      @error = hash.key?('error') ? hash['error'] : nil
      @error_code = hash.key?('error_code') ? hash['error_code'] : nil
      @error_description =
        hash.key?('error_description') ? hash['error_description'] : SKIP
    end
  end
end