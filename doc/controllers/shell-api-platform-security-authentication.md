# Shell API Platform Security Authentication

```ruby
shell_api_platform_security_authentication_controller = client.shell_api_platform_security_authentication
```

## Class Name

`ShellAPIPlatformSecurityAuthenticationController`


# Oauth Token Post

To obtain APIGEE access token

:information_source: **Note** This endpoint does not require authentication.

```ruby
def oauth_token_post(grant_type,
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

result = shell_api_platform_security_authentication_controller.oauth_token_post(
  grant_type,
  client_id,
  client_secret
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Unauthorized | [`AccessTokenErrorException`](../../doc/models/access-token-error-exception.md) |

