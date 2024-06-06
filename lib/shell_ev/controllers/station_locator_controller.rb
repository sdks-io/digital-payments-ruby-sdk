# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  # StationLocatorController
  class StationLocatorController < BaseController
    # Returns all sites within specified radius of specified GPS location. Sites
    # of all Types are returned. This call must be used when attempting to
    # establish the station the user is located at as part of fuelling journey
    # (i.e. user has to be within 300m of station to be considered located at
    # the station). This API could also be used as a general query to find
    # nearby Shell locations
    # @param [String] m Required parameter: API Method to be executed
    # @param [Float] lon Required parameter: The user’s current longitude
    # @param [Float] lat Required parameter: The user’s current latitude
    # @param [Float] radius Required parameter: The search radius in
    # kilometers
    # @param [String] offer_code Optional parameter: This enables requestor to
    # specify locations that will honour the specified (advanced) offer code
    # @param [Integer] n Optional parameter: This enables requestor to limit the
    # number of locations that are returned and defaulted to a maximum of 250
    # locations. Locations returned based on distance to User’s location
    # as-the-crow-flies.
    # @param [Array[String]] amenities Optional parameter: This enables
    # requestor to filter locations based on one or more amenities (e.g. Filter
    # locations so that only those with a Toilet are returned).
    # @param [Array[String]] countries Optional parameter: This enables
    # requestor to filter locations based on one or more Countries (i.e. by
    # country codes).
    # @return [AroundLocationArray] response from the API call
    def stationlocator_v1_stations_get_around_location(m,
                                                       lon,
                                                       lat,
                                                       radius,
                                                       offer_code: nil,
                                                       n: nil,
                                                       amenities: nil,
                                                       countries: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/SiteData/v1/stations/',
                                     Server::DEFAULT)
                   .query_param(new_parameter(m, key: 'm'))
                   .query_param(new_parameter(lon, key: 'lon'))
                   .query_param(new_parameter(lat, key: 'lat'))
                   .query_param(new_parameter(radius, key: 'radius'))
                   .query_param(new_parameter(offer_code, key: 'offer_code'))
                   .query_param(new_parameter(n, key: 'n'))
                   .query_param(new_parameter(amenities, key: 'amenities'))
                   .query_param(new_parameter(countries, key: 'countries'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('oAuthTokenPost')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(AroundLocationArray.method(:from_hash))
                   .local_error('400',
                                'Bad request',
                                StationLocatorBadRequestException)
                   .local_error('401',
                                'Unauthorized',
                                StationLocatorUnauthorizedException)
                   .local_error('403',
                                'Forbbiden',
                                StationLocatorForbiddenException)
                   .local_error('404',
                                'Not Found',
                                StationLocatorNotFoundException)
                   .local_error('500',
                                'Internal Server Error',
                                StationLocatorInternalServerErrorException))
        .execute
    end
  end
end