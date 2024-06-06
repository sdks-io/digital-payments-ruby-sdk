
# Client Class Documentation

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `connection` | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| `adapter` | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| `http_callback` | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| `mpp_token_credentials` | [`MppTokenCredentials`]($a/custom-header-signature.md) | The credential object for Custom Header Signature |
| `o_auth_token_post_credentials` | [`OAuthTokenPostCredentials`]($a/custom-header-signature-1.md) | The credential object for Custom Header Signature |

The API client can be initialized as follows:

```ruby
client = ShellEv::Client.new(
  mpp_token_credentials: MppTokenCredentials.new(
    authorization: 'Authorization'
  ),
  o_auth_token_post_credentials: OAuthTokenPostCredentials.new(
    x_apigee_authorization: 'X-Apigee-Authorization'
  )
)
```

## Shell EV Client

The gateway for the SDK. This class acts as a factory for the Controllers and also holds the configuration of the SDK.

## Controllers

| Name | Description |
|  --- | --- |
| shell_api_platform_security_authentication | Gets ShellAPIPlatformSecurityAuthenticationController |
| digital_payment_enablement | Gets DigitalPaymentEnablementController |
| station_locator | Gets StationLocatorController |
| fueling | Gets FuelingController |
| partner_notification | Gets PartnerNotificationController |

