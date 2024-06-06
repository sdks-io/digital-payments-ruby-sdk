# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # FinaliseFuelingRequestPayment Model.
  class FinaliseFuelingRequestPayment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :method

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :card_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :card_last_digits

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['method'] = 'method'
      @_hash['card_id'] = 'cardId'
      @_hash['card_last_digits'] = 'cardLastDigits'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        method
        card_id
        card_last_digits
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(method = SKIP,
                   card_id = SKIP,
                   card_last_digits = SKIP)
      @method = method unless method == SKIP
      @card_id = card_id unless card_id == SKIP
      @card_last_digits = card_last_digits unless card_last_digits == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      method = hash.key?('method') ? hash['method'] : SKIP
      card_id = hash.key?('cardId') ? hash['cardId'] : SKIP
      card_last_digits =
        hash.key?('cardLastDigits') ? hash['cardLastDigits'] : SKIP

      # Create object from extracted values.
      FinaliseFuelingRequestPayment.new(method,
                                        card_id,
                                        card_last_digits)
    end
  end
end
