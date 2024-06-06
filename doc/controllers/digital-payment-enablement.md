# Digital Payment Enablement

```ruby
digital_payment_enablement_controller = client.digital_payment_enablement
```

## Class Name

`DigitalPaymentEnablementController`


# Mpay V1 Tokens Ref Put

Generates a DPAN and stores the relationship between the Reference ID, DPAN and the real PAN. This method is called during the customer registration process, ahead of any payment. The Reference ID is an identifier chosen by the client system for mobile payment registration. It must be unique in context of the client system, and is the key to obtaining and managing the payment details later.

```ruby
def mpay_v1_tokens_ref_put(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`MobilePaymentRegistrationRequest`](../../doc/models/mobile-payment-registration-request.md) | Body, Required | - |

## Response Type

[`PaymentEnablementResponse`](../../doc/models/payment-enablement-response.md)

## Example Usage

```ruby
body = MobilePaymentRegistrationRequest.new(
  'caa29807-6fa7-4801-87bb-dd975e2cbf41',
  '7077141290120180000',
  '2101',
  3,
  '8682',
  '8682',
  '32',
  [
    CollectingCompany.new(
      '32'
    )
  ]
)

result = digital_payment_enablement_controller.mpay_v1_tokens_ref_put(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Error Occurred. The server cannot or will not process the request due to an apparent client error (e.g., malformed request syntax, invalid request message). | [`PaymentEnablementErrorResponseException`](../../doc/models/payment-enablement-error-response-exception.md) |
| 401 | Unauthorized. The request has not been applied because it lacks valid authentication credentials for the target resource. | `APIException` |
| 403 | Forbidden. The server understood the request but refuses to authorize it. | `APIException` |
| 404 | Not Found. The origin server did not find a current representation for the target resource or is not willing to disclose that one exists. | `APIException` |
| 500 | Internal Server Error. The server encountered an unexpected condition that prevented it from fulfilling the request. | `APIException` |

