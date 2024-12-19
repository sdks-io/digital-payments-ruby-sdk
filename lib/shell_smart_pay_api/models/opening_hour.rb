# shell_smart_pay_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellSmartPayApi
  # OpeningHour Model.
  class OpeningHour < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :closing_from_hours

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :closing_from_minutes

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :closing_to_hours

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :closing_to_minutes

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :from_day

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :opening_from_hours

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :opening_from_minutes

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :opening_to_hours

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :opening_to_minutes

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :to_day

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['closing_from_hours'] = 'Closing_From_Hours'
      @_hash['closing_from_minutes'] = 'Closing_From_Minutes'
      @_hash['closing_to_hours'] = 'Closing_To_Hours'
      @_hash['closing_to_minutes'] = 'Closing_To_Minutes'
      @_hash['from_day'] = 'From_Day'
      @_hash['opening_from_hours'] = 'Opening_From_Hours'
      @_hash['opening_from_minutes'] = 'Opening_From_Minutes'
      @_hash['opening_to_hours'] = 'Opening_To_Hours'
      @_hash['opening_to_minutes'] = 'Opening_To_Minutes'
      @_hash['to_day'] = 'To_Day'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        closing_from_hours
        closing_from_minutes
        closing_to_hours
        closing_to_minutes
        from_day
        opening_from_hours
        opening_from_minutes
        opening_to_hours
        opening_to_minutes
        to_day
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(closing_from_hours = SKIP, closing_from_minutes = SKIP,
                   closing_to_hours = SKIP, closing_to_minutes = SKIP,
                   from_day = SKIP, opening_from_hours = SKIP,
                   opening_from_minutes = SKIP, opening_to_hours = SKIP,
                   opening_to_minutes = SKIP, to_day = SKIP)
      @closing_from_hours = closing_from_hours unless closing_from_hours == SKIP
      @closing_from_minutes = closing_from_minutes unless closing_from_minutes == SKIP
      @closing_to_hours = closing_to_hours unless closing_to_hours == SKIP
      @closing_to_minutes = closing_to_minutes unless closing_to_minutes == SKIP
      @from_day = from_day unless from_day == SKIP
      @opening_from_hours = opening_from_hours unless opening_from_hours == SKIP
      @opening_from_minutes = opening_from_minutes unless opening_from_minutes == SKIP
      @opening_to_hours = opening_to_hours unless opening_to_hours == SKIP
      @opening_to_minutes = opening_to_minutes unless opening_to_minutes == SKIP
      @to_day = to_day unless to_day == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      closing_from_hours =
        hash.key?('Closing_From_Hours') ? hash['Closing_From_Hours'] : SKIP
      closing_from_minutes =
        hash.key?('Closing_From_Minutes') ? hash['Closing_From_Minutes'] : SKIP
      closing_to_hours =
        hash.key?('Closing_To_Hours') ? hash['Closing_To_Hours'] : SKIP
      closing_to_minutes =
        hash.key?('Closing_To_Minutes') ? hash['Closing_To_Minutes'] : SKIP
      from_day = hash.key?('From_Day') ? hash['From_Day'] : SKIP
      opening_from_hours =
        hash.key?('Opening_From_Hours') ? hash['Opening_From_Hours'] : SKIP
      opening_from_minutes =
        hash.key?('Opening_From_Minutes') ? hash['Opening_From_Minutes'] : SKIP
      opening_to_hours =
        hash.key?('Opening_To_Hours') ? hash['Opening_To_Hours'] : SKIP
      opening_to_minutes =
        hash.key?('Opening_To_Minutes') ? hash['Opening_To_Minutes'] : SKIP
      to_day = hash.key?('To_Day') ? hash['To_Day'] : SKIP

      # Create object from extracted values.
      OpeningHour.new(closing_from_hours,
                      closing_from_minutes,
                      closing_to_hours,
                      closing_to_minutes,
                      from_day,
                      opening_from_hours,
                      opening_from_minutes,
                      opening_to_hours,
                      opening_to_minutes,
                      to_day)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} closing_from_hours: #{@closing_from_hours}, closing_from_minutes:"\
      " #{@closing_from_minutes}, closing_to_hours: #{@closing_to_hours}, closing_to_minutes:"\
      " #{@closing_to_minutes}, from_day: #{@from_day}, opening_from_hours:"\
      " #{@opening_from_hours}, opening_from_minutes: #{@opening_from_minutes}, opening_to_hours:"\
      " #{@opening_to_hours}, opening_to_minutes: #{@opening_to_minutes}, to_day: #{@to_day}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} closing_from_hours: #{@closing_from_hours.inspect}, closing_from_minutes:"\
      " #{@closing_from_minutes.inspect}, closing_to_hours: #{@closing_to_hours.inspect},"\
      " closing_to_minutes: #{@closing_to_minutes.inspect}, from_day: #{@from_day.inspect},"\
      " opening_from_hours: #{@opening_from_hours.inspect}, opening_from_minutes:"\
      " #{@opening_from_minutes.inspect}, opening_to_hours: #{@opening_to_hours.inspect},"\
      " opening_to_minutes: #{@opening_to_minutes.inspect}, to_day: #{@to_day.inspect}>"
    end
  end
end