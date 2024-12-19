
# Custom Header Signature



Documentation for accessing and setting credentials for MppToken.

## Auth Credentials

| Name | Type | Description | Getter |
|  --- | --- | --- | --- |
| Authorization | `String` | Access token to be passed for Mobile Payment Platform Authentication ([How to obtain Digital Payments access token?](page:guided-walkthrough/walkthrough1)) | `authorization` |



**Note:** Auth credentials can be set using `MppTokenCredentials` object, passed in as named parameter `mpp_token_credentials` in the client initialization.

## Usage Example

### Client Initialization

You must provide credentials in the client as shown in the following code snippet.

```ruby
client = ShellSmartPayApi::Client.new(
  mpp_token_credentials: MppTokenCredentials.new(
    authorization: 'Authorization'
  )
)
```


