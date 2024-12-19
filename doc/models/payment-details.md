
# Payment Details

Object containing Payment details

## Structure

`PaymentDetails`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_category` | `String` | Optional | The type of commercial transaction. Permitted value\:<br><br>* B2B |
| `payment_method_id` | `String` | Required | The payment method used to make the transaction. Possible values include:<br><br>* euroShell |
| `payment_properties` | [`PaymentProperties`](../../doc/models/payment-properties.md) | Required | Object containing Payment Property details Please note:<br>All the attributes are optional as they serve all payment methods (i.e. different payment methods require different fields to be filled/mandated). As a result, some of these fields will be mandatory depending on the selected payment method and the API will return an error if they are not completed |

## Example (as JSON)

```json
{
  "paymentCategory": "paymentCategory4",
  "paymentMethodId": "paymentMethodId6",
  "paymentProperties": {
    "paymentType": "paymentType8",
    "clientMetadataId": "clientMetadataId2",
    "token": "token8",
    "identifier": "identifier4",
    "network": "network4",
    "cardIdentifier": "cardIdentifier8"
  }
}
```

