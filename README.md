
# Getting Started with Shell EV

## Introduction

The APIs detailed within this document will enable Shell's Fleet Solutions Customers to digitalize Shell Card/s and use them to pay to refuel their vehicles at Shell Stations.

## Install the Package

Install the gem from the command line:

```ruby
gem install digital-payments-sdk -v 1.0.0
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'digital-payments-sdk', '1.0.0'
```

For additional gem details, see the [RubyGems page for the digital-payments-sdk gem](https://rubygems.org/gems/digital-payments-sdk/versions/1.0.0).

## Test the SDK

To run the tests, navigate to the root directory of the SDK in your terminal and execute the following command:

```
rake
```

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/sdks-io/digital-payments-ruby-sdk/tree/1.0.0/doc/client.md)

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
| `mpp_token_credentials` | [`MppTokenCredentials`](https://www.github.com/sdks-io/digital-payments-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/sdks-io/digital-payments-ruby-sdk/tree/1.0.0/custom-header-signature.md) | The credential object for Custom Header Signature |
| `o_auth_token_post_credentials` | [`OAuthTokenPostCredentials`](https://www.github.com/sdks-io/digital-payments-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/sdks-io/digital-payments-ruby-sdk/tree/1.0.0/custom-header-signature-1.md) | The credential object for Custom Header Signature |

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

## Authorization

This API uses the following authentication schemes.

* [`MppToken (Custom Header Signature)`](https://www.github.com/sdks-io/digital-payments-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/sdks-io/digital-payments-ruby-sdk/tree/1.0.0/custom-header-signature.md)
* [`oAuthTokenPost (Custom Header Signature)`](https://www.github.com/sdks-io/digital-payments-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/sdks-io/digital-payments-ruby-sdk/tree/1.0.0/custom-header-signature-1.md)

## List of APIs

* [Shell API Platform Security Authentication](https://www.github.com/sdks-io/digital-payments-ruby-sdk/tree/1.0.0/doc/controllers/shell-api-platform-security-authentication.md)
* [Digital Payment Enablement](https://www.github.com/sdks-io/digital-payments-ruby-sdk/tree/1.0.0/doc/controllers/digital-payment-enablement.md)
* [Station Locator](https://www.github.com/sdks-io/digital-payments-ruby-sdk/tree/1.0.0/doc/controllers/station-locator.md)
* [Partner Notification](https://www.github.com/sdks-io/digital-payments-ruby-sdk/tree/1.0.0/doc/controllers/partner-notification.md)
* [Fueling](https://www.github.com/sdks-io/digital-payments-ruby-sdk/tree/1.0.0/doc/controllers/fueling.md)

## Classes Documentation

* [Utility Classes](https://www.github.com/sdks-io/digital-payments-ruby-sdk/tree/1.0.0/doc/utility-classes.md)
* [HttpResponse](https://www.github.com/sdks-io/digital-payments-ruby-sdk/tree/1.0.0/doc/http-response.md)
* [HttpRequest](https://www.github.com/sdks-io/digital-payments-ruby-sdk/tree/1.0.0/doc/http-request.md)

