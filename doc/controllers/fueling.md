# Fueling

```ruby
fueling_controller = client.fueling
```

## Class Name

`FuelingController`

## Methods

* [Mpp Token](../../doc/controllers/fueling.md#mpp-token)
* [Mpp Prepare Fueling](../../doc/controllers/fueling.md#mpp-prepare-fueling)
* [Mpp Cancel Fueling](../../doc/controllers/fueling.md#mpp-cancel-fueling)


# Mpp Token

The Digital Payments Service enables 3rd Parties to trigger the refuel process which, if successful, will unlock a pump/nozzle ready for fuelling. Enables a 3rd party to request an access token to start using fueling.
APIs

```ruby
def mpp_token(grant_type,
              client_id,
              client_secret)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `grant_type` | `String` | Form, Required | In OAuth 2.0, the term grant type refers to the way an application gets an access token. OAuth 2.0 defines several grant types, including the authorization code flow. |
| `client_id` | `String` | Form, Required | After registering your app, you will receive a client ID and a client secret. The client ID is considered public information, and is used to build login URLs, or included in Javascript source code on a page. |
| `client_secret` | `String` | Form, Required | After registering your app, you will receive a client ID and a client secret. The client ID is considered public information, and is used to build login URLs, or included in Javascript source code on a page. The client secret must be kept confidential. |

## Response Type

[`MppAccesTokenResponse`](../../doc/models/mpp-acces-token-response.md)

## Example Usage

```ruby
grant_type = 'client_credentials'

client_id = 'b2bmpp-cli'

client_secret = 'f20935d8f14a44bd1f0923cc4c4fa63f7b25922330cd5080f735f1a2769ece77ce245cfe8ba4cbd2a58544ee5113c200b8e37a7be33311e4b6f3c785bf3f37d2'

result = fueling_controller.mpp_token(
  grant_type,
  client_id,
  client_secret
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Unauthorized. The request has not been applied because it lacks valid authentication credentials for the target resource. | [`MppAccesTokenErrorResponseException`](../../doc/models/mpp-acces-token-error-response-exception.md) |


# Mpp Prepare Fueling

Enables a 3rd party to request to unlock a pump so that they may fill up to a pre-authorised limit. The fuel types that are unlocked may also be determined by permitted fuels stored against the user/entity profile

```ruby
def mpp_prepare_fueling(site_country,
                        currency,
                        body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `site_country` | `String` | Query, Required | Country ISO code |
| `currency` | `String` | Query, Required | Currency ISO code |
| `body` | [`PrepareFuelingRequest`](../../doc/models/prepare-fueling-request.md) | Body, Required | - |

## Response Type

[`PrepareFuelingResponse`](../../doc/models/prepare-fueling-response.md)

## Example Usage

```ruby
site_country = 'NL'

currency = 'EUR'

body = PrepareFuelingRequest.new(
  12.92452,
  77.68862,
  '9955',
  '1',
  'PARTNER_APP_EXAMPLE',
  [
    PaymentDetailsItems.new(
      'euroShell',
      PaymentProperties.new(
        '98e4ffd3-4146-4e94-8445-e02f4ce87a77'
      )
    )
  ],
  nil,
  [
    LoyaltyDetails.new(
      '70043201060148830',
      'Shell'
    )
  ]
)

result = fueling_controller.mpp_prepare_fueling(
  site_country,
  currency,
  body
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error Occurred. Request did not include bearer token or token provided and is invalid. | `APIException` |
| 401 | Unauthorized | `APIException` |
| 403 | Forbidden. Requestor is not permitted to call the API | `APIException` |
| 404 | Not Found. Request received by the server but requested URL not found | `APIException` |


# Mpp Cancel Fueling

Enables a partner user to cancel pump reservation from the App

```ruby
def mpp_cancel_fueling(mpp_transaction_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `mpp_transaction_id` | `String` | Template, Required | The ID of the transaction that’s being cancelled |

## Response Type

`void`

## Example Usage

```ruby
mpp_transaction_id = '000000001C48'

fueling_controller.mpp_cancel_fueling(mpp_transaction_id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error Occurred. The server cannot or will not process the request due to an apparent client error (e.g., malformed request syntax, invalid request message). Please see below for information regarding structure of Response Body vs. all possible errors that could be returned. | [`CancelFuelingErrorResponseErrorException`](../../doc/models/cancel-fueling-error-response-error-exception.md) |
| 401 | Unauthorized. Request did not include bearer token or token provided and is invalid. | [`CancelFuelingErrorResponseErrorException`](../../doc/models/cancel-fueling-error-response-error-exception.md) |
| 403 | Forbidden. Requestor is not permitted to call the API. | `APIException` |
| 404 | Not Found. Request received by the server but requested URL not found | `APIException` |

