# Station Locator

```ruby
station_locator_controller = client.station_locator
```

## Class Name

`StationLocatorController`


# Stationlocator V1 Stations Get Around Location

Returns all sites within specified radius of specified GPS location. Sites of all Types are returned. This call must be used when attempting to establish the station the user is located at as part of fuelling journey (i.e. user has to be within 300m of station to be considered located at the station). This API could also be used as a general query to find nearby Shell locations

```ruby
def stationlocator_v1_stations_get_around_location(m,
                                                   lon,
                                                   lat,
                                                   radius,
                                                   offer_code: nil,
                                                   n: nil,
                                                   amenities: nil,
                                                   countries: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `m` | `String` | Query, Required | API Method to be executed |
| `lon` | `Float` | Query, Required | The user’s current longitude |
| `lat` | `Float` | Query, Required | The user’s current latitude |
| `radius` | `Float` | Query, Required | The search radius in kilometers |
| `offer_code` | `String` | Query, Optional | This enables requestor to specify locations that will honour the specified (advanced) offer code |
| `n` | `Integer` | Query, Optional | This enables requestor to limit the number of locations that are returned and defaulted to a maximum of 250 locations. Locations returned based on distance to User’s location as-the-crow-flies. |
| `amenities` | `Array<String>` | Query, Optional | This enables requestor to filter locations based on one or more amenities (e.g. Filter locations so that only those with a Toilet are returned). |
| `countries` | `Array<String>` | Query, Optional | This enables requestor to filter locations based on one or more Countries (i.e. by country codes). |

## Response Type

[`AroundLocationArray`](../../doc/models/around-location-array.md)

## Example Usage

```ruby
m = 'aroundLocation'

lon = 77.6730103

lat = 12.9132169

radius = 0.3

result = station_locator_controller.stationlocator_v1_stations_get_around_location(
  m,
  lon,
  lat,
  radius
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad request | [`StationLocatorBadRequestException`](../../doc/models/station-locator-bad-request-exception.md) |
| 401 | Unauthorized | [`StationLocatorUnauthorizedException`](../../doc/models/station-locator-unauthorized-exception.md) |
| 403 | Forbbiden | [`StationLocatorForbiddenException`](../../doc/models/station-locator-forbidden-exception.md) |
| 404 | Not Found | [`StationLocatorNotFoundException`](../../doc/models/station-locator-not-found-exception.md) |
| 500 | Internal Server Error | [`StationLocatorInternalServerErrorException`](../../doc/models/station-locator-internal-server-error-exception.md) |

