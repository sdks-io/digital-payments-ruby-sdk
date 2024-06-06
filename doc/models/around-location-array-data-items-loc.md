
# Around Location Array Data Items Loc

Object containing address details/elements

## Structure

`AroundLocationArrayDataItemsLoc`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `street` | `String` | Optional | The station’s full street address, including building number |
| `pc` | `String` | Optional | The station’s postcode |
| `city` | `String` | Optional | The city the station is located within |
| `region` | `String` | Optional | The region the station is located within |
| `country` | `String` | Required | The name of the country (in English) the station is located within |
| `ccode` | `String` | Required | The two-letter ISO 3166 country code of the country the station is located within |

## Example (as JSON)

```json
{
  "street": "80/2 Outer Ring Road.",
  "pc": "560037",
  "city": "Bangalore",
  "region": "Karnataka",
  "country": "India",
  "ccode": "IN"
}
```

