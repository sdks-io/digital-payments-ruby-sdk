
# Mobile Payment Registration Request

## Structure

`MobilePaymentRegistrationRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `reference_id` | `String` | Required | Unique Reference ID the DPAN is registered to. The Reference ID has been implemented to accept normal alphanumeric characters plus the following ‘special characters’&colon;  dot, underscore and hyphen. The following characters are not acceptable&colon; , / @ !  &num; & * () |
| `pan` | `String` | Required | Original card PAN (generated on creation of Card (see Card Order Service)) |
| `pan_expiry` | `String` | Required | Expiry Date associated with the PAN in format YYMM. |
| `period` | `Integer` | Required | Specifies how many months the DPAN should be valid for. If not present, the Token Server determines the expiry date using its default algorithm. Note that the Token Server might not respect this value and use configured business rules to override the requested validity period |
| `account_id` | `String` | Required | In Shell, a Payer can have several accounts (representing company branches, divisions or generally different cost-centers that a customer wants to group cards on). You can specify this property or the AccountNumber. |
| `payer_id` | `String` | Required | The Payer Id, or the Customer Id of the Payment Customer. In Shell, a Payer is a customer belonging to a specific market geography. A Payer can have several Accounts; each account can then have different groups of cards. |
| `col_co_id` | `String` | Required | The ID of the Collecting Company (in GFN), also known as Shell Code of the selected payer. This property is mandatory if the ColCoCode code is not passed |
| `collecting_companies` | [`Array<CollectingCompany>`](../../doc/models/collecting-company.md) | Required | Array of Colco Ids |

## Example (as JSON)

```json
{
  "referenceId": "caa29807-6fa7-4801-87bb-dd975e2cbf41",
  "pan": "7077141290120180000",
  "panExpiry": "2101",
  "period": 3,
  "AccountId": "8682",
  "PayerId": "8682",
  "ColCoId": "32",
  "CollectingCompanies": [
    {
      "ColCoId": "32"
    }
  ]
}
```

