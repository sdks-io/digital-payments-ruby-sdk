
# Finalise Fueling Request

## Structure

`FinaliseFuelingRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `site_name` | `String` | Optional | - |
| `timestamp` | `Integer` | Optional | - |
| `volume_quantity` | `Float` | Optional | - |
| `volume_unit` | `String` | Optional | - |
| `final_price` | `Float` | Optional | - |
| `currency` | `String` | Optional | - |
| `status` | `String` | Optional | - |
| `site_address` | `String` | Optional | - |
| `original_price` | `Float` | Optional | - |
| `discount` | `Float` | Optional | - |
| `payment` | [`Payment`](../../doc/models/payment.md) | Optional | - |
| `products` | [`Array<Product>`](../../doc/models/product.md) | Optional | - |
| `mpp_transaction_id` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "siteName": "Pentahof Site B 9997",
  "timestamp": 1548429960631,
  "volumeQuantity": 10.4,
  "volumeUnit": "LTR",
  "finalPrice": 23.3,
  "currency": "GBP",
  "status": "FINISHED",
  "siteAddress": "Test Geman Address",
  "originalPrice": 23.3,
  "discount": 0,
  "mppTransactionId": "000000006KCC"
}
```

