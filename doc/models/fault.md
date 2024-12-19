
# Fault

## Structure

`Fault`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `faultstring` | `String` | Optional | The description of the error. |
| `detail` | [`Detail`](../../doc/models/detail.md) | Optional | - |

## Example (as JSON)

```json
{
  "faultstring": "Invalid ApiKey for given resource",
  "detail": {
    "errorcode": "errorcode6"
  }
}
```

