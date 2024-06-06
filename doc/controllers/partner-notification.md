# Partner Notification

```ruby
partner_notification_controller = client.partner_notification
```

## Class Name

`PartnerNotificationController`

## Methods

* [Partner Token](../../doc/controllers/partner-notification.md#partner-token)
* [Finalise Fueling](../../doc/controllers/partner-notification.md#finalise-fueling)
* [Cancel Fueling](../../doc/controllers/partner-notification.md#cancel-fueling)


# Partner Token

To access the Partner’s endpoints, for sending callback messages, Shell will need to connect to the Partner API end points. It is recemmended that the partner offers OAuth 2.0 as a standard for call back APIs and will require the OAuth 2.0 token for authentication. Note this needs to be implemented over HTTPS

:information_source: **Note** This endpoint does not require authentication.

```ruby
def partner_token(grant_type,
                  client_id,
                  client_secret)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `grant_type` | `String` | Form, Required | In OAuth 2.0, the term grant typee refers to the way an application gets an access token. OAuth 2.0 defines several grant types, including the authorization code flow. |
| `client_id` | `String` | Form, Required | After registering your app, you will receive a client ID and a client secret. The client ID is considered public information, and is used to build login URLs, or included in Javascript source code on a page. |
| `client_secret` | `String` | Form, Required | After registering your app, you will receive a client ID and a client secret. The client ID is considered public information, and is used to build login URLs, or included in Javascript source code on a page. The client secret must be kept confidential. |

## Response Type

[`AccessTokenResponse`](../../doc/models/access-token-response.md)

## Example Usage

```ruby
grant_type = 'client_credentials'

client_id = 'SOFflRakNlwnWlxfOXQ4GHDVyqGawuKA'

client_secret = 'cRnWgw7gACqM3gVS'

result = partner_notification_controller.partner_token(
  grant_type,
  client_id,
  client_secret
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Unauthorized | [`AccessTokenErrorException`](../../doc/models/access-token-error-exception.md) |


# Finalise Fueling

Enables Shell to inform partner of the successful completion of a transaction. Note this needs to be implemented over HTTPS

:information_source: **Note** This endpoint does not require authentication.

```ruby
def finalise_fueling(body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`FinaliseFuelingRequest`](../../doc/models/finalise-fueling-request.md) | Body, Optional | - |

## Response Type

`void`

## Example Usage

```ruby
body = FinaliseFuelingRequest.new(
  'Pentahof Site B 9997',
  1548429960631,
  10.4,
  'LTR',
  23.3,
  'GBP',
  'FINISHED',
  'Test Geman Address',
  23.3,
  0,
  nil,
  nil,
  '000000006KCC'
)

partner_notification_controller.finalise_fueling(body: body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request | `APIException` |
| 401 | Unauthorized | `APIException` |


# Cancel Fueling

Enables Shell to inform partner that a Mobile Payment transaction has been cancelled by Shell as an error/issue occured. Note this needs to be implemented over HTTPS

:information_source: **Note** This endpoint does not require authentication.

```ruby
def cancel_fueling(body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`CancelFuelingRequest`](../../doc/models/cancel-fueling-request.md) | Body, Optional | - |

## Response Type

`void`

## Example Usage

```ruby
body = CancelFuelingRequest.new(
  '000000001E5M',
  'CANCELLED'
)

partner_notification_controller.cancel_fueling(body: body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request | `APIException` |
| 401 | Unauthorized | `APIException` |

