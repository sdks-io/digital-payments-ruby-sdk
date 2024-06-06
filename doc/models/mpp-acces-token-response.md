
# Mpp Acces Token Response

## Structure

`MppAccesTokenResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `access_token` | `String` | Optional | It is the token used in the requests that required to authenticate an user. |
| `token_type` | `String` | Optional | type of token provided<br>**Default**: `'bearer'` |
| `expires_in` | `Integer` | Optional | validity of the access token in seconds |
| `scope` | `String` | Optional | scope for the authentication protocol<br>**Default**: `'basic openid'` |

## Example (as JSON)

```json
{
  "access_token": "zn2GcAQugJQRJXcGXsmHZ8LMqVde",
  "token_type": "bearer",
  "expires_in": 3599,
  "scope": "basic openid"
}
```

