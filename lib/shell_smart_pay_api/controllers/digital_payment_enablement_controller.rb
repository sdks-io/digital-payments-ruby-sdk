# shell_smart_pay_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellSmartPayApi
  # DigitalPaymentEnablementController
  class DigitalPaymentEnablementController < BaseController
    # Generates a DPAN and stores the relationship between the Reference ID,
    # DPAN and the real PAN. This method is called during the customer
    # registration process, ahead of any payment. The Reference ID is an
    # identifier chosen by the client system for mobile payment registration. It
    # must be unique in context of the client system, and is the key to
    # obtaining and managing the payment details later.
    # @param [MobilePaymentRegistrationRequest] body Required parameter:
    # Example:
    # @return [PaymentEnablementResponse] response from the API call.
    def mpay_v1_tokens_ref_put(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/PaymentEnablement/v1/ref',
                                     Server::SHELL)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('oAuthTokenPost')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentEnablementResponse.method(:from_hash))
                    .local_error('400',
                                 'Error Occurred. The server cannot or will not process the'\
                                  ' request due to an apparent client error (e.g., malformed'\
                                  ' request syntax, invalid request message).',
                                 PaymentEnablementErrorResponseException)
                    .local_error('401',
                                 'Unauthorized. The request has not been applied because it'\
                                  ' lacks valid authentication credentials for the target resource'\
                                  '.',
                                 APIException)
                    .local_error('403',
                                 'Forbidden. The server understood the request but refuses to'\
                                  ' authorize it.',
                                 APIException)
                    .local_error('404',
                                 'Not Found. The origin server did not find a current'\
                                  ' representation for the target resource or is not willing to'\
                                  ' disclose that one exists.',
                                 APIException)
                    .local_error('500',
                                 'Internal Server Error. The server encountered an unexpected'\
                                  ' condition that prevented it from fulfilling the request.',
                                 APIException))
        .execute
    end
  end
end
